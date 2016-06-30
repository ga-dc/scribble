class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end
# email_type = params[:type]
  # new
  def new
    # redirect_to root_path unless @current_user
    # @post = params[:p_id]
    # @comment = @post.comment.new
    @comment = Comment.new
  end

  # create
  def create
    # redirect_to root_path unless @current_user
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to @comment
    # @comment = Comment.create!(comment_params)
    # redirect_to "/comments/#{@comment.id}"
  end

  #show
  def show
    @comment = Comment.find(params[:id])
  end

  # edit
  def edit
    # redirect_to root_path unless @current_user
    @comment = Comment.find(params[:id])
  end

  # update
  def update
    # redirect_to root_path unless @current_user
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)

    redirect_to "/comments/#{@comment.id}"
  end

  # destroy
  def destroy
    # redirect_to root_path unless @current_user
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_path
  end

  private
  def comment_params
    params.require(:comment).permit(:comment)
  end
end
