class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :initialize_cart
  def create
    current_user.update(order_params[:user])
    @order_form = OrderForm.new(
      user: current_user,
      cart: @cart
    )
    if @order_form.save
      notify_user
      session.delete(:cart)
      redirect_to root_path, notice: "Thank you for placing the order."
    else
      render "carts/checkout"
    end
  end

  private

  def order_params
    params.require(:order_form).permit(
      user: [ :name, :phone, :address, :city, :country, :postal_code, :email ]
    )
  end

  def notify_user
    OrderMailer.order_confirmation(@order_form.order).deliver
  end
end
