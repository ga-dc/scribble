class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = @post.comments
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create!(posts_params)
    
    redirect_to "/posts/#{@post.id}"
  end

private
  def posts_params
    params.require(:post).permit(:title, :content, :author, :photo_url, :link)
  end

end
