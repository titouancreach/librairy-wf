class AdministratorController < ApplicationController
  def administrator
    @books = Book.all
    @users = User.all
  end
  
  def editbook
    @book = Book.find(params[:id])
  end
  
  def edituser
    @user = User.find(params[:id])
  end
  
  def showbook
    @book = Book.find(params[:id])
  end
  
  def showuser
    @user = User.find(params[:id])
  end
  
  def createuser
    @user = User.new
  end
  
  def createbook
    @book = Book.new
  end

   
end
