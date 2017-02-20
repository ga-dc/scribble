class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.all
  end

  def show
    @category = Category.new
    @post = Post.find(params[:id])
    @comments = @post.comments
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(strong_params.merge(user: current_user))
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.user == current_user
      @post.update(strong_params)
    else
      flash[:alert] = "You are not authorized to edit this post"
    end
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.user == current_user
      @post.destroy
    else
      flash[:alert] = "You are not authorized to delete this post"
    end
    redirect_to posts_path
  end


  private
  def strong_params
    params.require(:post).permit(:title, :body)
  end


end
