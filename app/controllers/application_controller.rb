class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  def current_user
    User.where(id: session[:userid]).first
  end
  helper_method :current_user
  
  
  protected
    def authenticate_admin!
      if current_user and current_user.isadmin == true and current_user.status == 1
        #super
      else
        redirect_to login_path
      end
    end
    
    def authenticate_user!
      if current_user and current_user.status == 1
        #super
      else
        redirect_to login_path
      end
    end
  end
