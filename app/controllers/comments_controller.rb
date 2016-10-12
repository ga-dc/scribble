class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end
  def edit
  end

  def new
  end

  def destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
