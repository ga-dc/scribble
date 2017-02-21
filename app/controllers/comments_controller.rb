class CommentsController < ApplicationController

  # new
  def new
    @comment = Comment.new

    redirect_to post_path(@post)
  end

  # create
  def create
    @comment = Comment.create!(post_params)

    redirect_to post_path(@post)
  end

  # destroy
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to post_path(@post)
  end

  private
  def artist_params
    params.require(:post).permit(:author, :post_title, :post_text, :created_on, :updated_on)
  end
end
end
