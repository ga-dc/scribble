class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  # new
  def new
    @post = Post.new
  end

  # create
  def create
    # redirect_to root_path unless @current_user
    @post = Post.create!(post_params)
    redirect_to "/posts/#{@post.id}"
  end

  #show
  def show
    @post = Post.find(params[:id])
  end

  # edit
  def edit
    # redirect_to root_path unless @current_user
    @post = Post.find(params[:id])
  end


  # update
  def update
    # redirect_to root_path unless @current_user
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to "/posts/#{@post.id}"
  end

  # destroy
  def destroy
    # redirect_to root_path unless @current_user
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to "/posts"
  end

  private
  def post_params
    params.require(:post).permit(:user, :title, :content)
  end
end
