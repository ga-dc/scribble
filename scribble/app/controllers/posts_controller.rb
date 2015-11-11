class PostsController < ApplicationController
  def index
    @posts=Post.all
  end

  def create
    @post=Post.create(post_params)
    redirect_to posts_path
  end

  def new
    @post=Post.new
  end

  def edit

  end

  def show
    @post=Post.find(params[:id])
  end

  def update
    @post=Post.find(params[:id])
    @post.update(post_params)
    redirect_to posts_path
  end

  def destroy

  end

  # strong param
  private
  def post_params
    params.require(:post).permit(:title, :content, :creater, :datetime)
  end
end
