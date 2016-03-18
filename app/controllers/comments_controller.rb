class CommentsController < ApplicationController
  # new
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
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


  # update
  def update
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id]).update(comment_params)

    redirect_to post_path(@post)
  end

  # destroy
  def destroy
     @comment = Comment.find(params[:id])
     @comment.destroy
     redirect_to post_path(params[:post_id])
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_text, :post_id)
  end
end
