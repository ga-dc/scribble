class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create!(post_params)
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(param[:id])
    redirect_to post_path(@post)
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.destroy
    redirect_to posts_path
  end

end
