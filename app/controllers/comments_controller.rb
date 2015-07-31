class CommentsController < ApplicationController
  before_action :get_post, only: [:show, :edit, :create, :update, :destroy]

  def index
  end

  def create
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to post_path(@post)
  end

  def destroy
  end

  private
    def comment_params
      params.require(:comment).permit(:user, :comment, :post_id)
    end
    def get_post
      @post = Post.find(params[:post_id])
    end
end
