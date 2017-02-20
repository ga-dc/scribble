class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:id])
    @comment = Comment.new
  end
  def create
    @post = Post.find(params[:id])
    @comment = @post.comments.create(params[:id])
    redirect_to @post
  end
end
