class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:id])
    @comment = @post.comment.create
    redirect_to root_path
  end
end
