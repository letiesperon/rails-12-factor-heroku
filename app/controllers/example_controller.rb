class ExampleController < ApplicationController
  def home
    render json: { message: 'welcome2!' }
  end

  def cual_es_mi_nombre_var
    my_name = ENV['NAME']

    render json: { message: my_name }
  end
end
