class CommentsController < ApplicationController

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = "You've sucessfully deleted a comment."
    redirect_to post_path(@post)
  end


  def new
  @comment = Comment.new
  @post = Post.find(params[:post_id])
  end

  def create
  @post = Post.find(params[:post_id])
  @comment = @post.comments.create(comment_params)
  flash[:notice] = "Your comment has been added."
  redirect_to post_path(@post)
  end


  def edit
      @post = Post.find(params[:post_id])
      @comment = Comment.find(params[:id])
  end

  def update
      @post = Post.find(params[:post_id])
      @comment = Comment.find(params[:id])
      @comment.update(comment_params)
      flash[:notice] = "You've sucessfully updated the comment."
      redirect_to post_path(@post)
  end


  private
  def comment_params
  params.require(:comment).permit(:text, :user)
  end


end
