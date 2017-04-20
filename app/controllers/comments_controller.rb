class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end
end
