class PostsController < ApplicationController
  # index
  def index
    @posts = Post.all
    #render :index      You can add this if you want to change the default view file
  end

  # show
  def show
    @post = Post.find(params[:id])
  end

  # new
  def new
    @post = Post.new
  end

  # create
  def create
    @post = Post.create!(post_params)
    redirect_to "/posts/#{@post.id}"
  end

  # edit
  def edit
    @post = Post.find(params[:id])
  end

  # update
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to "/posts/#{@post.id}"
  end

  # destroy
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to "/posts"
  end

  private
  def post_params
    params.require(:post).permit(:title, :user, :content)
  end
end
