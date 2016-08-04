class PublishersController < ApplicationController
 
  def index
  end

  def show
  end

  def new
    @page_title = 'Add Publisher'
    @publisher = Publisher.new
  end

  def edit
  end

  def create
    @publisher = Publisher.new(publisher_params)
    @publisher.save

    redirect_to publishers_path
  end

  def update
  end

  def destroy
  end

   private
    def publisher_params
      params.require(:publisher).permit(:name)
    end
  
end
