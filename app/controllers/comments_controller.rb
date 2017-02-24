class CommentsController < ApplicationController

def show
  @comment = Comment.find(params[:id])
end

def new
  @comment = Comment.new
end

def edit
  @post = Post.find(params[:artist_id])
  @comment = Comment.find(params[:id])
end

def create
  @comment = Comment.create!(comment_params)
  redirect_to post_comment_path(@comment.post)
end

def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to post_path(@comment.post)
end

  private
  def comment_params
    params.require(:comment).permit(:author, :content, :post_id)
  end

end
