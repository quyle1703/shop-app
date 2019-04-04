class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def initialize_cart
    @cart = Cart.build_from_hash session
  end

  def is_admin?
    if current_user.try(:admin?)
      return true
    else
      return false
      redirect_to root_path
      flash[:danger] = "You're not admin user. So you cannot view this page"
    end
  end
  
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :first_name, :last_name, :avatar, :phone, :profession) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation ,:current_password ,:first_name, :last_name, :avatar, :phone, :profession) }
  end
end
