class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:email]).try(:authenticate, params[:password])
    if @user
      session[:user_id] = @user.id
      redirect_to '/products'
    else
      flash.now[:error] = "Invalid Email and Password Combination"
      render :new
    end
  end

  def destroy
    session.clear
    # session[:user_id] = nil
    redirect_to '/'
  end
end