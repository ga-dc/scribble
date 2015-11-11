class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to "/posts/#{@post.id}"
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to "/posts"
  end
  
  def show
    @post = Post.find(params[:id])
  end

  def new

  end

  def create
    @post = Post.create!(post_params)
    redirect_to "/posts/#{@post.id}"
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end



end
