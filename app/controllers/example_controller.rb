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
end
