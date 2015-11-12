class CommentsController < ApplicationController

  def index
    @post = Post.all
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(comment_params)

    if @comment.save
      redirect_to post_path(@post)
    else
      render 'new'
    end
  end


  def edit
  end

  def show
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  def update
  end

  def destroy
  end


  private
  def comment_params
    params.require(:comment).permit(:body)
  end



end
