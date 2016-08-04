class CategoriesController < ApplicationController
  
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @categories = Category.all
    @books = @category.books
  end

  def new
    @page_title = 'Add Category'
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "Category created"
      redirect_to categories_path
    else
      flash[:alert] = "Category not created"
      render :new
    end
    
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
