class PostsController < ApplicationController
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
    @post = Post.create(name: params[:post][:name], title: params[:post][:title], content: params[:post][:content])
    redirect_to "/posts/"
  end
end
