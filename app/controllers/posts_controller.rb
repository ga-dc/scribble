class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show,:index]

  def allpost
    @posts = Post.all
  end

  def index
    if current_user
    @posts = current_user.posts
  else
    @posts = Post.all
  end
  end

  def show
    @categories = @post.categories
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.create(post_params)
    redirect_to posts_path
  end

  def edit
    if @post.user == current_user

  else
    redirect_to post_path(@post)
  end
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
    params.require(:post).permit(:title, :post, :category)
  end

end
