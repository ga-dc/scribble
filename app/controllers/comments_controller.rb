class CommentsController < ApplicationController

  # new
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  # create
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(comment_params)

    redirect_to post_path(@post)
  end

  # edit
  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  private
  def comment_params
    params.require(:comment).permit(:message, :author, :post_id)
  end

end
