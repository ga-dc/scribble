class CommentsController < ApplicationController

  def index
    @comments = Post.all
  end

  def show
    @comments = Post.all
    # @post = Post.find_by(params[:id])
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create!(comment_params)

    redirect_to comments_path
  end


  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)

    redirect_to comments_path(@post)
  end

  # private
  #   def comment_params
  #     params.require(:comment).permit(:user, :comment)
  #   end
end

#
# end
