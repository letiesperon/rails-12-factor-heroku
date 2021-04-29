class OrdersController < ApplicationController
  def create
    order = Order.create!(status: 'pending')

    ProcessOrder.perform_later(order.id)

    render json: {
      id: order.id,
      status: order.status,
      message: 'Your order has been queued. Check later.'
    }
  end

  def show
    order = Order.find(params[:id])

    render json: {
      id: order.id,
      status: order.status
    }
  end
end
