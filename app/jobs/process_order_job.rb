class ProcessOrderJob < ApplicationJob
  STATUSES = ['pending', 'payment_approved', 'in_transit', 'delivered']

  def perform(order_id)
    sleep(5)
    order = Order.find(order_id)
    return if finished?(order)

    order.update!(status: next_status_after(order.status))
    ProcessOrderJob.perform_later(order_id) unless finished?(order)
  end

  def next_status_after(order_status)
    STATUSES[STATUSES.find_index(order_status) + 1]
  end

  def finished?(order)
    order.status == 'delivered'
  end
end
