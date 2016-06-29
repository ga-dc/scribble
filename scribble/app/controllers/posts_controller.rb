class PostsController < ApplicationController

  def index
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
      redirect_to @post
  end

  def create
    @post = Post.create(post_params)

    if @post.save
      redirect_to @post

    else
      flash[:alert] = "Topic requires title & 5char"
      render 'new'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to action: "index"
  end

  private
    def post_params
      params.require(:post).permit(:topic, :text)
    end
  end
