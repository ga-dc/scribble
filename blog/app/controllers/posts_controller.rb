class PostsController < ApplicationController
  #index
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create

    @post = Post.create!(post_params)
    redirect_to posts_path(@post)
  end

  def show
  end

  def edit
  end

  def update

  end

  def destroy

  end
  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
