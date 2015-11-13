class CommentsController < ApplicationController
  # lists all comments, separate from the post. this is fairly useless
  def index
    @post = Post.find(params[:post_id])
    @user = User.find(@post.user.id)
    @comments = @post.comments
  end
  #shows a specific comment and allows the user to edit it.  note: in order to delete or edit a comment, you must
  #be logged in as the author of the post to which the comment is attached
  def show
    @post = Post.find(params[:post_id])
    @user = User.find(@post.user_id)
    @comment = Comment.find(params[:id])
  end
  #links to the create form
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end
  #creates a new comment attached to the current post
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comments_params)
    redirect_to post_path(@post)
  end
  #deletes a comment, redirects back to the post show page to which the comment was formerly attached
  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end
  #links to the edit form
  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end
  #updates comments here, must be the owner of a post in order to update comments attached to that post
  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update!(comments_params)
    redirect_to post_path(@post)
  end
  #strong params function
  private
  def comments_params
    params.require(:comment).permit(:author, :text)
  end
end
