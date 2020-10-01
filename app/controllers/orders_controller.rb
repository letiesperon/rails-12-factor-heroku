class OrdersController < ApplicationController
  def create
    order = Order.create!(status: 'pending')

    ProcessOrderJob.perform_later(order.id)

    render json: { message: "Order id #{order.id} is being processed", status: :accepted }
  end

  def show
    order = Order.find(params[:id])

    render json: {
      order_id: order.id,
      order_status: order.status
    }
  end
end
