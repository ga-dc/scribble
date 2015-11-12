class CommentsController < ApplicationController

  #new
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  # create
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comment.create!(comment_params)

    redirect_to post_path(@post)
  end

# edit
  def edit
    @comment = Comment.find(params[:id])
    @post = @comment.post
  end

  # update
  def update
    @comment = Comment.find(params[:id])
    @comment.update!(comment_params)

    redirect_to post_path(@comment.post)
  end

  # destroy
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to post_path(@comment.post)
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end

end
