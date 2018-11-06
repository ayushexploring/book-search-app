class BooksController < ApplicationController
  def index
  	@search_term = params[:search_term]
  	@books = Book.about(@search_term)
  end
end
