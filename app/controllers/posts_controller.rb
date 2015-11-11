class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    # @artist = Artist.find_by(id: params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(title: params[:title])
    render :show
  end

  private
  def post_params
    # params.require(:artist).permit(:name, :photo_url, :nationality)
  end

end
