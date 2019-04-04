class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_profile
  before_action :initialize_cart
  before_action :correct_user, only: [:show]

  def show
  end

  private
  def set_profile 
    @profile = User.find(params[:id])
  end

  def current_user?(user)
    user == current_user
  end

  def correct_user
    redirect_to(root_url) && flash[:alert] = "You cannot view other user's info" unless current_user?(@profile)
  end
end
