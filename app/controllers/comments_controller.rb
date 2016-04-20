class CommentsController < ApplicationController
  def create
    cleaned_params = params.require(:comment).permit(:comment, :post_id)
    @comment = Comment.create(cleaned_params)
    # @post = Post.find(params[:comment][:post_id])
    redirect_to @comment.post
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    cleaned_params = params.require(:comment).permit(:comment, :post_id)
    @comment = Comment.find(params[:id])
    if @comment.update(cleaned_params)
      redirect_to @comment.post
    else
      render :edit
    end
  end

  def destroy
    # @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @comment.post
  end

  private
    def comment_params
      params.require(:comment).permit(:post_id, :comment)
    end

end
