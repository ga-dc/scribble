class PostsController < ApplicationController
  # actions will go here
  def index
    @posts = Post.all
  end

  def show
    puts params
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

end
