class CommentsController < ApplicationController
  def create
    cleaned_params = params.require(:comment).permit(:comment, :post_id)
    @comment = Comment.create(cleaned_params)
    # @post = Post.find(params[:comment][:post_id])
    redirect_to @comment.post

  end
  def destroy
    @comment = Comment.find(params[:post_id])
    @comment.destroy
    redirect_to @comment.post
  end
end
