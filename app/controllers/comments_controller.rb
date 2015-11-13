class CommentsController < ApplicationController

  before_action :authenticate_user!, except: [:show, :index]

  # index
  def index
    @comments = Comment.all
  end

  # new / create new comment part 1
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build
  end

  # create / create new comment part 2
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(comment_params)
    redirect_to post_path(@comment.post)
  end

  #show
  def show
    @post = Post.find(params[:post_id])
    @comments = Comment.find(params[:id])
  end

  # edit
  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end
  #
  # # # update
  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)

    redirect_to post_path(@post)
  end

  # # destroy
  def destroy
    @post = Post.find(params[:post_id])
    @comments = Comment.find(params[:id])
    @comments.destroy

    redirect_to post_path(@post)


  end
  #
  private
  def comment_params
    params.require(:comment).permit(:user, :article, :date)
  end
end
