class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post =Post.create!(artist_params)
    redirect_to artist_path(@post)
  end

end
