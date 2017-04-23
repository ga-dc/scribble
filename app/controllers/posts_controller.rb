class PostsController < ApplicationController


  def index
    @posts = Post.all
  end
  #show
  def show
    @post = Post.find(params[:id])
  end
  # new
  def new
    @post = Post.new
  end
  # edit
  def edit
    @artist = Artist.find(params[:id])
  end
  # create
  def create
    @artist = Artist.create!(artist_params)

    redirect_to artist_path(@artist)
  end





  # update
  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)

    redirect_to artist_path(@artist)
  end

  # destroy
  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy

    redirect_to artists_path
  end
end
