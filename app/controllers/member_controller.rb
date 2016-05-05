class MemberController < ApplicationController
  
  def member
    @users = User.all
    @books = Book.all
    sql = "SELECT * FROM Books WHERE Books.userid=10"
    @Memberbooks = execute_query(sql)
  end
  
  def execute_query(sql)
    result = ActiveRecord::Base.connection.execute(sql)
    if result.present?
      return result
    else
        return nil
    end
  end
  
end
