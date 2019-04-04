class CartsController < ApplicationController 
  before_action :authenticate_user!
  before_action :initialize_cart
  
  def add
    @cart.add_item params[:id]
    session["cart"] = @cart.serialize
    product = Product.find params[:id]
    redirect_back fallback_location: root_path, notice: "Added #{product.name} to cart."
  end
  
  def show 
  end

  def checkout
    @order_form = OrderForm.new user: current_user
  end
end