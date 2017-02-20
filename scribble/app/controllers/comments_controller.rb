class CommentsController < ApplicationController

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to @post
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :text)
    end

end
