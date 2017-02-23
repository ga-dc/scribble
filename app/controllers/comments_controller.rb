class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @artist.comment.create!(comment_params)
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :content)
  end

end
