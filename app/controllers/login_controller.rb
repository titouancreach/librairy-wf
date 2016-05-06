class LoginController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(username: params[:username].downcase)
    if user && user.authenticate(params[:password])
      session[:userid] = user.id
      redirect_to root_ur, notice: 'Logged in!'
    else
      flash.now[:danger] = 'Invalid username/password combination'
      render 'new'
    end
  end
  
  def destroy
    session[:userid] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end
