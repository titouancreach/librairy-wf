class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by username: params[:username]
    if user && user.authenticate(params[:password]) && user.status == 1
      session[:userid] = user.id
      redirect_to "/", notice: 'Logged in!'
    else
      render :new
    end
  end

  def destroy
    session[:userid] = nil
    redirect_to "/", notice: 'Logged out!'
  end
end
