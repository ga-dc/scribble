class CategoriesController < ApplicationController
  def index
  end
  def show
    @category = Category.find(params[:id])    
  end
  def new
  end
  def create
  end
  def destroy
  end
  def edit
  end
  def update
  end
  private
  def cats_params
    params.require(:comment).permit(:author, :text)
  end
end
