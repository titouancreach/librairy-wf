class MemberController < ApplicationController
  
  def index
    @member = Member.all
  end
  
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
  
  # GET /members/1
  def show
  end
  
  # GET /members/1/edit
  def edit
  end
  
  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to "/member/member", notice: '30 days have been added to your loan.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :isbn, :description, :author, :status, :thumbnail, :return, :userid)
    end
end
