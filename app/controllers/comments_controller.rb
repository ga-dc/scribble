class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post), notice: "Comment posted."

  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])

  end

  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to post_path(@post), notice: "Comment updated."

  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post), notice: "Comment deleted."
  end
  private
  def comment_params
    params.require(:comment).permit(:body, :user)
  end
end
