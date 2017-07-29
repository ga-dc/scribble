class CommentsController < ApplicationController
  def index
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(comments_params)
    
    redirect_to post_path(@post)
  end

private
  def comments_params
    params.require(:comment).permit(:username, :content, :rating)
  end
end
