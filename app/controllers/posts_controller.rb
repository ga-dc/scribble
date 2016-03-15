class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show

  end

  def new
    puts "This is a new post"
    @post = Post.new
  end

  def create
    @post = Post.create!(post_params)
    redirect_to "/posts"
  end

  def destroy

  end

  private
  def post_params
    params.require(:post).permit(:title, :date, :entry)
  end

end
