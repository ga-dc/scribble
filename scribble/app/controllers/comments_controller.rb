class CommentsController < ApplicationController
  before_action :set_post, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_comment, only: [:edit, :update, :destroy]

  def new
    @comment = Comment.new
  end

  def create
    @comment = @post.comments.create!(comment_params)
    redirect_to post_path(@post)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def set_post
    @post = Post.find(params[:post_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:com_text)
  end
end
