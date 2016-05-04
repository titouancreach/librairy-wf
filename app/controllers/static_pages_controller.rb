class StaticPagesController < ApplicationController
  def home
    @books = Book.all
    @books = @books.search(params[:keyword]) if params[:keyword].present?
  end
end
