class CommentsController < ApplicationController
  # index
  def index
    @comments = Comment.all
  end

  # new
  def new
    @comments = Comment.new
  end

  # # create
  # def create
  #   @artist = Artist.create!(artist_params)
  #
  #   redirect_to artist_path(@artist)
  # end
  #
  # #show
  # def show
  #   @artist = Artist.find(params[:id])
  # end
  #
  # # edit
  # def edit
  #   @artist = Artist.find(params[:id])
  # end
  #
  #
  # # update
  # def update
  #   @artist = Artist.find(params[:id])
  #   @artist.update(artist_params)
  #
  #   redirect_to artist_path(@artist)
  # end
  #
  # # destroy
  # def destroy
  #   @artist = Artist.find(params[:id])
  #   @artist.destroy
  #
  #   redirect_to artists_path
  # end
  #
  # private
  # def artist_params
  #   params.require(:artist).permit(:name, :photo_url, :nationality)
  # end
end
