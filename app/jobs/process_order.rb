class ProcessOrder < ApplicationJob
  def perform(order_id)
    order = Order.find(order_id)
    return unless order.status == 'pending'

    sleep(20)
    order.update!(status: 'completed')
  end
end
