class CommentsController < ApplicationController
  #index
  # def index
  #   @comments = Comment.all
  # end

  #new
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  #create
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(comment_params)

    redirect_to post_path(@post)
  end

  #show
  def show
    @comment = Comment.find(params[:id])
    @post = Post.find(params[:post_id])
  end

  #edit
  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end
  #update
  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to post_comment_path(@comment)
  end
  #destroy
  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_content, :comment_by)
  end
end
