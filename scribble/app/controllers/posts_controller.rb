class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  # Need to replace with new/save if statement
  def create
    @post = Post.create!(post_params)
    redirect_to post_path(@post)
  end

  def show
  end

  def edit
  end

  def update
    @post.update!(post_params)
    redirect_to post_path(@post)
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:headline, :body, :image)
  end

end
