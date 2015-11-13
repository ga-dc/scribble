class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy, :create, :new]

  def show
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update(comments_params)

    redirect_to post_comment_path(@post, @comment)
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comments_params)
    redirect_to @post
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @post
  end

  private
  def comments_params
    params.require(:comment).permit(:text)
  end
end


# question - is @comment.post faster than Post.find(params[:artist_id])?
# which is better practice? Is consistancy more important?
