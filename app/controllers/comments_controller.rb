class CommentsController < ApplicationController

  #index
  #show
  #new
  def new
    @post = Post.find params[:post_id]
    @comment = Comment.new
  end

  #create
  def create
    @post = Post.find params[:post_id]
    @comment = @post.comments.create!(comment_params)

    redirect_to post_path(@post)
  end
  #edit
  #update
  #destroy

  #private
  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
