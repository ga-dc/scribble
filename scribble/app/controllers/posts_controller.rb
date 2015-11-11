class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def create
    @post = Post.create!(post_params)
    redirect_to @post
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def show
  end

  def update
    @post.update!(post_params)
    redirect_to (@post)
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

end
