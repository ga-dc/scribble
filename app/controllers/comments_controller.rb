class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    return unless authorized
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  def create
    return unless authorized
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user = @current_user
    @comment.save
    redirect_to "/posts/#{@post.id}"
    # redirect_to post_path(@comment)
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
    return unless authorized
    @comment = Comment.find(params[:id])
  end

  def update
    return unless authorized
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)

    redirect_to post_path(@comment)
  end

  def destroy
    return unless authorized
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_path
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_content, :comment_author, :post_id)
  end

end
