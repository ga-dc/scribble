class CommentsController < ApplicationController

  def index
    @comments = Comment.all.order(:id).reverse
  end

  def new
  end

  def create
    @comment = Comment.new( comment_params )
    @comment.update( timestamp: Time.now.strftime("%B %d, %Y") )
    redirect_to("/comments/#{@post.id}")
  end

  def edit
    @post = Comment.find( params[:id] )
  end

  def update
    @comment = Comment.find( params[:id] )
    @comment.update( post_params )
    redirect_to("/comments/#{@comment.id}")
  end

  def show
    @comment = Comment.find( params[:id] )
  end

  def destroy
    @comment = Comment.find( params[:id] )
    @comment.destroy
    redirect_to("/")
  end

  private
  def comment_params
    params.require(:comment).permit(:user, :title, :body, :timestamp, :post)
  end

end
