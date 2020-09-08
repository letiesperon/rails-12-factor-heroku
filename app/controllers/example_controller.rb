class ExampleController < ApplicationController
  def home
    render json: { message: 'welcome2!' }
  end

  def cual_es_mi_nombre_var
    my_name = ENV.fetch('NAME')

    render json: { message: my_name }
  end

  def cual_es_mi_nombre_redis
    param_my_name = params[:name]

    if param_my_name
      Rails.cache.write('name', param_my_name)
    end

    my_name = Rails.cache.fetch('name')

    render json: { message: my_name }
  end
end
