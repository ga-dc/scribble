class CommentsController < ApplicationController

  # READ

  def index
    @post  = Post.find(params[:post_id])
    @comments = @post.comments
  end

  # -----------------------------------------
  # -----------------------------------------

  def show

    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])

  end


  # -----------------------------------------
  # -----------------------------------------

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
    
  end


  def create
    @post = Post.find(params[:post_id])
    @post.comments.create!(passing_info)
    redirect_to post_comments_path(@post)
  end
  # -----------------------------------------
  # -----------------------------------------

  def edit
    @post = Post.find(params[:post_id])
    @comment =  @post.comments.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.update(passing_info)
    redirect_to post_comments_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_comments_path(@post)
  end

  private

  def passing_info
    params.require(:comment).permit(:title, :text)
  end


  # -----------------------------------------

end # end of CommentsController class
