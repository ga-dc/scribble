class CategoriesController < ApplicationController
  # actions will go here
  def index

  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
    @post = Post.find(params[:post_id])
  end

  def create
    @post = Post.find(params[:post_id])
    @category = @post.tags.create(params[:category])

    redirect_to post_path(@post)
  end

  def edit

  end

  def update

  end

  def destroy

  end


end
