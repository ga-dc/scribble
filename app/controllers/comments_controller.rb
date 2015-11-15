class CommentsController < ApplicationController
  # comments#index
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
  end
  # comments#create
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(params[:post_id])
    # redirect_to "/posts/#{@comment.post}"
  end
  # comments#new
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end
  # comments#edit
  def edit
    @comment = Comment.find(params[:id])
  end
  # comments#update
  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to "/comments/#{@comment.id}"
  end
  # comments#show
  def show
    @comment = Comment.find(params[:id])
  end
  # comments#destroy
  def destroy
    Comment.delete(params[:id])
    redirect_to "/comments"
  end

  private
  def comment_params
    params.require(:comment).permit(:username, :comment)
  end
end
