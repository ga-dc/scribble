class CommentsController < ApplicationController
  before_action :get_post, only: [:show, :edit, :create, :update, :destroy]
  before_action :get_comment, only: [:edit, :update, :destroy]

  def index
  end

  def create
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def edit
  end

  def update
    @comment.update(comment_params)
    redirect_to post_path(@post)
  end

  def destroy
    @comment.destroy
    redirect_to post_path(@post)
  end

  private
    def comment_params
      params.require(:comment).permit(:user, :comment, :post_id)
    end

    def get_comment
      @comment = Comment.find(params[:id])
    end

    def get_post
      @post = Post.find(params[:post_id])
    end
end
