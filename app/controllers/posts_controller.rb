class PostsController < ApplicationController
  # index
  def index
    @posts = Post.all
  end

  # new
  def new
    @posts = Post.new
  end

  # create
  def create
    @posts = Post.create!(posts_params)
    redirect_to posts_path(@posts)
  end

  #show
  def show
    @posts = Post.find(params[:id])
  end

  # edit
  def edit
    @posts = Post.find(params[:id])
  end


  # update
  def update
    @posts = Post.find(params[:id])
    @posts.update(posts_params)

    redirect_to posts_path(@posts)
  end

  # destroy
  def destroy
    @posts = Post.find(params[:id])
    @posts.destroy
    redirect_to posts_path
  end
end
