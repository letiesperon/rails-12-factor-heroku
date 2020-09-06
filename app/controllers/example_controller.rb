class ExampleController < ApplicationController
  def whats_my_name_env
    name_from_env = ENV['NAME'] || 'not defined'
    render json: { name: name_from_env }
  end

  def whats_my_name_redis
    Rails.cache.write('name', params[:name]) if params[:name]
    name_from_redis = Rails.cache.fetch('name') || 'not defined'
    render json: { name: name_from_redis }
  end

  def whats_my_name_global
    $name_from_global = params[:name] if params[:name]
    name_from_global = $name_from_global || 'not defined'
    render json: { name: name_from_global }
  end
end
