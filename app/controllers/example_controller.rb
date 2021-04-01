class ExampleController < ApplicationController
  def home
    render json: { message: 'welcome2!' }
  end

  def cual_es_mi_nombre_var
    my_name = ENV.fetch('NAME')

    render json: { message: my_name }
  end

  def cual_es_mi_nombre_redis
    Rails.cache.write('name', params[:name]) if params[:name]
    my_name = Rails.cache.fetch('name')

    render json: { message: my_name }
  end

  def cual_es_mi_nombre_global
    $name_from_global = params[:name] if params[:name]
    render json: { message: $name_from_global }
  end
end
