class CategoriesController < ApplicationController
  def index
    @category = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.create!(artist_params)

    redirect_to artist_path(@category)
  end

  def update
    @category = Category
  end

  def destroy
    @category = Category
  end

end
