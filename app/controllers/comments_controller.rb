class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comments = Comment.all
  end

  def show
    @post = Post.find(params[:post_id])
    @comments = @post.comments.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create!(comment_params)
    redirect_to "/posts/#{@post.id}"
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.update(comment_params)
    redirect_to post_path(@post)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to "/posts"
  end

  private
def comment_params
  params.require(:comment).permit(:user, :content)
end
end
