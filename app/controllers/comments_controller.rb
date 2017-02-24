class CommentsController < ApplicationController

  def index
    @comments= Comment.all.order(:id)
  end

  def new
    @comment= Comment.new
  end

  def create
    @comment = Comment.create!(comment_params)
    redirect_to "/posts/:id"
  end

  def show
    @comment = Comment.find(params[:id])
  end

  # edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # update
  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)

    redirect_to "/posts"
  end

  # destroy
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to "/posts"
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :username, :likes, :post_id)
    end

end
