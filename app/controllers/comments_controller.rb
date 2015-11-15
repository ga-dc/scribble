class CommentsController < ApplicationController
  # index
  def index

  end
  # new

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  # create
  def create
    @post = Post.find(params[:post_id])
    @post.comments.create!(comments_params)
    redirect_to post_path(@post)
  end
  # show

  def show

  end

  # edit
  def edit

  end
  # update

  def update

  end

  # destroy
  def destroy

  end


  private
    def comments_params
      params.require(:comment).permit(:comment)
    end
end
