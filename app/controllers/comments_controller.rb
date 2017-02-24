class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:id])
    @comment = @post.comments.create(comment_params)
    @post.comments = Comment.where(post_id: @post.id)
    redirect_to post_path(@post)
  end

  def edit
    @comment = Comment.find(params[:id])
    @post = Post.find(params[:post_id])
  end

  def update
    @comment = Comment.find(params[:id])
    @post = Post.find(params[:post_id])
    @comment = @comment.update(comment_params)
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id]).destroy!
    redirect_to post_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit!
  end

end
