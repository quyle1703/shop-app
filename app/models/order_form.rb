class OrderForm
  include ActiveModel::Model
  attr_accessor :user, :order #credit_card
  attr_writer :cart
  def has_errors?
    user.errors.any?
  end

  def save
    if user.valid?
      persist
      true
    else
      false
    end
  end

  private

  def valid?
    user.valid?
  end

  def persist
    @order = Order.create! user: user
    build_order_items
  end
  
  def build_order_items
    @cart.items.each do |item|
      @order.order_items.create! product_id: item.product_id, quantity: item.quantity
    end
  end

  def set_password_for_user
    user.password = Digest::SHA1.digest(user.email + Time.now.to_s)[0..8]
  end
end