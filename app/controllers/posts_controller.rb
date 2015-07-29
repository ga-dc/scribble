class PostsController < ApplicationController
  before_action :get_post, only: [:show, :edit, :update, :destroy]
  def index
    @posts = Post.all
  end
  def show
  end

  private
  def post_params
    params.require(:post).permit(:author, :title, :text)
  end
  def get_post
    @post = Post.find(params[:id])
  end
end
