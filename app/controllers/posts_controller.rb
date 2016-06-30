class PostsController < ApplicationController
  def index
      @post = Post.all
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.create(posts_params)
    redirect_to post_path(@post)
  end
end
