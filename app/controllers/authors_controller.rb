class AuthorsController < ApplicationController
 
  def index
  end

  def show
  end

  def new
    @page_title = 'Add Author'
    @author = Author.new
  end

  def edit
  end

  def create
    @author = Author.new(author_params)
    @author.save

    redirect_to authors_path
  end

  def update
  end

  def destroy
  end

   private
    def author_params
      params.require(:author).permit(:first_name, :last_name)
    end
  
end
