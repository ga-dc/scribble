class PostsController < ApplicationController
  before_action :authenticate_user!#, only: [:new, :create, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    current_user.posts.create(post_params)
    redirect_to posts_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
    if current_user != @post.user
      redirect_to @post
    end
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to posts_path
  end

  def destroy
    @post = Post.find(params[:id])
    if current_user != @post.user
      redirect_to @post
    else
      @post.destroy
    end
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title,:body)
  end

end
