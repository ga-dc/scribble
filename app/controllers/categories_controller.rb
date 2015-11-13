class CategoriesController < ApplicationController
  def index
  end
  #only used the show category here
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
end
