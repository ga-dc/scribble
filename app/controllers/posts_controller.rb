class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @posts = Post.create
  end

  def new
    @posts = Post.new
  end

  def edit
    @posts = Post.edit
  end

  def show
    @post = Post.find(params[:id])
    @comment = @post.comments
  end

end
