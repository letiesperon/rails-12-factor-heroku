class ExampleController < ApplicationController
  def home
    render json: { message: 'welcome!' }
  end
end
