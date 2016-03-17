class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create! comment_params
    redirect_to @post
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = @post.comments.update params[:id], comment_params
    redirect_to @post
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id]).destroy
    redirect_to @post
  end
  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
