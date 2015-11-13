class CommentsController < ApplicationController
before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comment = Comment.all
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)

    if @comment.save?
      flash[:notice] = "Successfully created..."
      redirect_to @comment
    else
      render :new
    end
  end

  def show
  end

  def edit
    @post = Post.find(params[:post_id])
  end

  def update
    @post = Post.find(params[:post_id])
    if @comment.update(comment_params)
      flash[:notice] = "Successfully updated..."
      redirect_to post_comment_path(@post, @comment)
    else
      render :edit
    end
  end

  def destroy
  end

private
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
