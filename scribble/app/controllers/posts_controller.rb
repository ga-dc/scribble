class PostsController < ApplicationController
  #Login requirements
  # before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  #GET
  def index
    @posts = Post.all
  end

  #NEW
  def new
    @post = Post.new
  end

  #CREATE
  def create
    @post = Post.create!(post_params)
    redirect_to post_path(@post)
  end

  # GET /posts/:id
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end
  # update
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end
  # destroy
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

  redirect_to posts_path
end
end

private
def post_params
  params.require(:post).permit(:title, :content)
end
