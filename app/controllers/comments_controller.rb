class CommentsController < ApplicationController

  def new
    puts params.inspect
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(comment_params)

    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])

    @comment.update(comment_params)

    redirect_to post_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
