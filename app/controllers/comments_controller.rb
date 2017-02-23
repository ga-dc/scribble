class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @post = Post.find(params[:id])
    @comment = @post.comments.new
  end

  def create
    @post = Post.find(params[:id])
    @comment = @post.comments.create(comment_params)

    redirect_to post_path(@post)
  end

  #show
  def show
    @comment = Comment.find(params[:id])
  end

  # edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # update
  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)

    redirect_to post_comment_path(@comment)
  end

  # destroy
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to post_comment_path
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end

end
