class CommentsController < ApplicationController
  # index
  def index
    @comments = Comment.all
  end

  # new / create new comment part 1
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build
  end

  # create / create new comment part 2
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(comment_params)
    redirect_to post_path(@comment.post)
  end

  #show
  def show
    @comments = Comment.find(params[:id])
  end
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
  private
  def comment_params
    params.require(:comment).permit(:user, :article, :date)
  end
end
