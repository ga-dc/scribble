class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    puts "This is a new post"
    @post = Post.new
  end

  def create
    puts params
    puts "New Post Created"
    @post = Post.create!(post_params)
    redirect_to "/posts"
  end

  def edit
    @post = Post.find(params[:id])
  end
  
  def destroy
    @post = Post.delete
  end

  private
  def post_params
    params.require(:post).permit(:title, :date, :content)
  end

end
