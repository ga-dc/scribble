class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:artist_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

end
