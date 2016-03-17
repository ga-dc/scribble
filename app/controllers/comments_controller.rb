class CommentsController < ApplicationController

  def index
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(comment_params)
    redirect_to post_path(@post)
    # if @comment.save
    #   redirect_to :action => :index
    # end
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def edit
    @comments = Comment.edit
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end

end
