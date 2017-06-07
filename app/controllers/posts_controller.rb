class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.create!(post_params)
    redirect_to posts_path
  end

  def update
    @post = Post.find(params[:id]).update(post_params)
  end

  def destroy
    @post = Post.find(params[:id]).destroy
    redirect_to posts_path
  end

end
