class CategoriesController < ApplicationController
  
  def index
  end

  def show
  end

  def new
    @page_title = 'Add Category'
    @category = Category.new
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
    def category_params
      params.require(:category).permit(:name)
    end
end
