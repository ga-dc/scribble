class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Post.comments.create!(comment_params)

    if @comment.save
     redirect_to post_path(@post) #what is the inverse of @post.comment? the syntax for the comment's parent post?
   else
     render 'new'
   end
  end

  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
  end

  def delete
  end

  private
  def comment_params
    params.require(:comment).permit(:title, :text)
  end


end
