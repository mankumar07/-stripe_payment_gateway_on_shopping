class Order < ApplicationRecord
  enum status: { pending: 0, failed: 1, paid: 2}
  belongs_to :user
  belongs_to :product

  def set_paid
    self.status = Order.statuses[:paid]
  end
  def set_failed
    self.status = Order.statuses[:failed]
  end

end
