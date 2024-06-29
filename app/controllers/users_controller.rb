class UsersController < ApplicationController
  def index
    User.all
  end
  def create
    User.create(user_params) 
  end

  private
  
  def user_params
    params.require(:user).permit(:email, :name, :password_hash, :icon_image)
  end
end
