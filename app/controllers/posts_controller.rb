class PostsController < ApplicationController

  #index
  def index
  @posts = Post.all
  end

  #new
  def new
    @posts = Post.new
  end

  #show
  def show
    @posts = Post.find(params[:id])
  end


end
