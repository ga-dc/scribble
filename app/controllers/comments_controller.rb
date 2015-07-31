class CommentsController < ApplicationController

  def index
    @comments = Comment.all.order(:id).reverse
  end

  def new
  end

  def create
    @comment = Comment.new( comment_params )
    @comment.update( timestamp: Time.now.strftime("%b %e %Y, %l:%M%P") )
    redirect_to @comment
  end

  def edit
    @comment = Comment.find( params[:id] )
  end

  def update
    @comment = Comment.find( params[:id] )
    @comment.update( post_params )
    @comment.update( timestamp: Time.now.strftime("%b %e %Y, %l:%M%P") )
    redirect_to @comment
  end

  def show
    @comment = Comment.find( params[:id] )
  end

  def destroy
    @post = @comment.post
    @comment = Comment.find( params[:id] )
    @comment.destroy
    redirect_to @post
  end

  private
  def comment_params
    params.require(:comment).permit(:user, :title, :body, :timestamp, :post)
  end

end
