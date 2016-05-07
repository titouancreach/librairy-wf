class MemberController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index
    @member = Member.all
  end
  
  def member
    
    @currentusr = current_user.id
    
    @users = User.all
    @books = Book.all
    @Memberbooks = @books.memberbooks(@currentusr);
    @usrfirstname = User.find(@currentusr).firstname
    @usrlastname = User.find(@currentusr).lastname
    @Memberbooks = @Memberbooks.search(params[:keyword]) if params[:keyword].present?
  end
  
  def execute_query(sql)
    result = ActiveRecord::Base.connection.execute(sql)
    if result.present?
      return result
    else
        return nil
    end
  end
  
  def showbook
    @book = Book.find(params[:id])
  end
end
