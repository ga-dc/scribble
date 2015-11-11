class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
  end
end
