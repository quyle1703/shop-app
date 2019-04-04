class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items
  def total_price
    order_items.inject(0) { |sum, item| sum + item.total_price }
  end
  self.per_page = 10
end
