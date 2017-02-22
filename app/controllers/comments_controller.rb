class CommentsController < ApplicationController

  # new
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  # create
  def create
    @post = Post.find(params[:post_id])
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
    params.require(:comment).permit(:author, :comment_title, :comment_text, :comment_created_on)
  end
end
