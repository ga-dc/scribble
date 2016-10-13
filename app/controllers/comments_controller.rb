class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end
  def show
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end
  def create
    @post = Post.find(params[:post_id])
    @post.comments.create(comments_params)
    redirect_to post_path(@post)
  end
  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end
  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update(comments_params)
    redirect_to post_path(@post)

  end
  private
  def comments_params
    params.require(:comment).permit(:title, :body, :post_id)
  end
end
