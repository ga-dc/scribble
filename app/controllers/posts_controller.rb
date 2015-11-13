class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy, :create, :new]
  before_action :is_same_user, only: [:edit, :update, :destroy, :create, :new]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
  end

  def create
    @post = current_user.posts.create!(posts_params)
    redirect_to @post
  end

  def update
    @post = Post.find(params[:id])
    @post.update(posts_params)
    redirect_to @post
  end

  def destroy
    @post = Post.find(params[:id])
    @post.comments.destroy_all
    @post.destroy
    redirect_to posts_path
  end

  private
  def posts_params
    params.require(:post).permit(:title, :text)
  end

  def is_same_user
    @user = current_user
    @post = Post.find(params[:id])
    if not @user == @post.user
      flash[:alert] = "You do not have the right"
      redirect_to posts_path
    end
  end
end
