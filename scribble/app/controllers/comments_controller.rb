class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
    @post = Post.find(params[:post_id])
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def show
    @comment = Comment.find(params[:id])
    @post = Post.find(params[:post_id])
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)

    redirect_to comment_path(@comment)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comment_path()
  end

  private
  def comment_params
    params.require(:comment).permit(:text , :post_id)
  end

end
