class ExampleController < ApplicationController
  def whats_my_name
    render json: { name: ENV['NAME'] || 'not defined' }
  end
end
