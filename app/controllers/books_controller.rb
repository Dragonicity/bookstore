class BooksController < ApplicationController
 
  def index
    @books = Book.all
    @categories = Category.all
  end

  def show
    @book = Book.find(params[:id])
    @categories = Category.all
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
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book created"
      redirect_to books_path
    else
      flash[:alert] = "Book not created"
      render :new
    end
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
