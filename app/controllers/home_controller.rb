class HomeController < ApplicationController
  def home
    @books = Book.all
    @books = @books.search(params[:keyword]) if params[:keyword].present?
  end
  
  def showbook
    @book = Book.find(params[:id])
  end
end
