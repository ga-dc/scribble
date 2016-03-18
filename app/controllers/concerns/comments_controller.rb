class CommentsController < ApplicationController
  def create
    # @comment = Comment.create(comment_params)
    # redirect_to "post/#{@post.id}"
  end

  def comment_params
    # params.require(:comment).permit(:user, :content, :post_id)
  end

end
