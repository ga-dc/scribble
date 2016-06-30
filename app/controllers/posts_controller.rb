class PostsController < ApplicationController
  def index
      @post = Post.all
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.create()
    redirect_to post_path(@post)
  end
  def edit
    @post = Post.find(params[:id])
  end
  def show
    @post = Post.find(params[:id])
    redirect_to posts_path
  end

end
