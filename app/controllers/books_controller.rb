class BooksController < ApplicationController
  def index
  	@search_term = params[:search_term] || 'rails'
  	@books = Book.about(@search_term)
  end
end
