class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.create!(comment_params.merge(post: @post))
    redirect_to post_path(@post)
  end

  def show

  end

  def update

  end

  def destroy

  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end

end
