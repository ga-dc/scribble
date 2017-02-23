class CommentsController < ApplicationController
  # index
  def index
    @comments = Comment.all
  end

  # # new
  # def new
  #   @post = Post.find(params[:id])
  #   @comment = @post.comments.new
  # end

  #show
  def show
    @comments = Comment.find(params[:id])
  end

  # create
  # def create
  #   # @song = Song.create(song_params)
  #   @artist = Artist.find(params[:artist_id])
  #   @artist.songs.create(song_params)
  #   @song = @artist.songs.create!(song_params)
  #
  #
  #   redirect_to artist_songs_path(@artist)
  # end

end
  # #show
  # def show
  #   @song = Song.find(params[:id])
  # end

#   # edit
#   def edit
#     @song = Song.find(params[:id])
#     # @update = @artist.songs.update(params[:id])
#     # @artist = Artist.find(params[:id])
#     # @artist = Artist.find(params[:artist_id])
#   end
#
#   # update
#   def update
#     @song = Song.find(params[:id])
#     @song.update(song_params)
#
#     redirect_to songs_path(@song)
#   end
#
#   # destroy
#   def destroy
#     @song = Song.find(params[:id])
#     @song.destroy
#
#     redirect_to songs_path
#   end
#
#   private
#   def song_params
#     params.require(:song).permit(:title, :album, :preview_url, :artist_id)
#   end
# end
