class AdministratorController < ApplicationController

  before_filter :authenticate_admin!
  
  def administrator
    @books = Book.all
    @users = User.all
    @books = @books.search(params[:keyword]) if params[:keyword].present?
    @users = @users.search(params[:keyword]) if params[:keyword].present?
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
  
  def loanbook
    @book = Book.find(params[:id])
    @users = User.all
    @usersarray = []
    
    @users.each do |user|
      @usersarray.push [user.firstname + " " + user.lastname, user.id]
    end
  end

   
end
