class AuthorsController < ApplicationController
 
  def index
  end

  def show
  end

  def new
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
    def author_params
      params.require(:author).permit(:first_name, :last_name)
    end
  
end
