class UsersController < ApplicationController
  def new
  end

  def create
    User.create(params[:user])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
