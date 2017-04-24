class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @posts = Post.find(params[:id])
  end

  def new
    @posts = Post.new
  end

  def create
    @posts = Post.create!(post_params)
    redirect_to post_path(@posts)
  end

  def edit
    @posts = Post.find(params[:id])
  end

  def update
    @posts = Post.find(params[:id])
    @post.update(post_params)

    redirect_to "/posts/#{post.id}"
  end

  def destroy
    @posts = Post.find(params[:id])
    @post.destroy
  end


  private
  def post_params
    params.require(:post).permit(:title, :author, :subject)
  end
end
