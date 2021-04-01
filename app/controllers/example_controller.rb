class ExampleController < ApplicationController
  def home
    render json: { message: 'Welcome!' }
  end
end
