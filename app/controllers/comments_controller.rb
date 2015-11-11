class CommentsController < ApplicationController
  def index
    @comments = Post.find(params[:id]).comments
  end

  def show
    @comment = Comment.find(params[:id])
    # @artist = Artist.find_by(id: params[:id])
  end

  def new
    @comment = Comment.new
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def create
    @comment = Comment.create(comment_params)
    render :show
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    # redirect_to "/comment"
    redirect_to comment_path
  end

  private
  def comment_params
    params.require(:comment).permit(:title, :text)
    # params.require(:artist).permit(:name, :photo_url, :nationality)
  end
end
