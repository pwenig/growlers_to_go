class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      UserNotifier.send_signup_email(@user).deliver
      session[:user_id] = @user.id
      flash[:register_message] = "Welcome, #{@user.first_name}. Please check your inbox for your welcome email"
      redirect_to '/charges/new'
    else
      render :new
    end
  end

  def index
    @users = User.all
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :address, :city, :state, :zip, :email, :password, :password_confirmation)
  end
end