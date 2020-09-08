class ExampleController < ApplicationController
  def home
    render json: { message: 'welcome2!' }
  end
end
