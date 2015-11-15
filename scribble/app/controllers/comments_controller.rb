class CommentsController < ApplicationController
  def index
    @post=Post.find(params[:post_id])
    @comments=@post.comments.all

    # redirect_to post_comments_path(@post)
  end

  def create
    @post=Post.find(params[:post_id])
    @comment=@post.comments.create(comment_params)
    redirect_to post_comments_path(@post)
  end

  def new
    @post=Post.find(params[:post_id])
    @comment=Comment.new
  end

  def edit

  end

  def show
     @post=Post.find(params[:post_id])
     @comment=@post.comments.find(params[:id])
  end

  def update

  end

  def destroy

  end

  private
  def comment_params
    params.require(:comment).permit(:userName, :content, :created_at)
  end
end
