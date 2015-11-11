class CommentsController < ApplicationController
  def show
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update(comments_params)

    redirect_to post_comment_path(@post, @comment)
  end


  private
  def comments_params
    params.require(:comment).permit(:text)
  end
end
