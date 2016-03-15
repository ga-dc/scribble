class PostsController < ApplicationController
  # actions will go here
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create!(post_params)

    redirect_to "/posts/#{@post.id}"
  end

  def detroy

  end

  private
  def post_params
    params.require(:post).permit(:title,
    :user,:content)
  end
end
