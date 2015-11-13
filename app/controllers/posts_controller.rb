class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    if current_user
    @posts = current_user.posts
    else
    @posts = Post.all
    end
  end

  def all_posts
    @posts = Post.all
  end

  def new
    @post = Post.new
    @category = Category.new
  end

  def create
    @post = current_user.posts.create!(post_params)
    @category = @post.categories.create!(:category)
    redirect_to post_path(@post)
  end

  def show
    @post = Post.find(params[:id])
    @categories = @post.categories
  end

  def edit
    if @post.user == current_user
    else
    flash[:alert] = "You didn't belong there, so I put you here..."
    redirect_to '/'
    end
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path()
  end

  private
# Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :text)
  end

  def category_params
    params.require(:category).permit(:category)
  end

end
