class CommentsController < ApplicationController

  # new
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  # create
  def create

    @comment = Comment.create!(post_params)

    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])

    redirect_to post_path(@post)
  end

  # destroy
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to post_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_author, :comment_title, :comment_text, :comment_created_on, :post_id)
  end
end
