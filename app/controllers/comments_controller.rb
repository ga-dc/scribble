class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]


  # index
  def index
    # @post = Post.find(params[:post_id])
    # @user = current_user
    # @comments = Comment.all
  end

  # new
  def new
    @user = current_user
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  # create
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    redirect_to post_path(@post)
  end

  #show
  def show

  end

  # edit
  def edit

  end

  # update
  def update
    @comment = @post.comments.find(params[:id])
    @comment.update(comment_params)

    redirect_to post_path(@post)
  end

  # destroy
  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to post_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit(:user_id, :comment)
  end

  def set_comment
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @commenter = current_user.email
  end

end
