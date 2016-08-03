class BooksController < ApplicationController
 
  def index
    
  end

  def show
  end 

  def new
    @page_title = 'Add Book'
    @book = Book.new
    @category = Category.new
    @author = Author.new
    @publisher = Publisher.new
  end

  def edit
  end
  
  def create
  end

  def update
  end

  def destroy
  end

  private
    def book_params
      params.require(:book).permit(:title, :category, :author, :publisher_id, :isbn, :price, :year, :buy, :format, :excerpt, :pages)
    end
end
