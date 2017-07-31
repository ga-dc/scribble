class CommentsController < ApplicationController
  # new
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  # create
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if @comment.save
      redirect_to @post, notice: "Your comment was successfully written!"
    else
      flash[:alert] = "Try again with all necessary info!"
       render :new
    end
  end


  def edit
      @post = Post.find(params[:post_id])
      @comment = Comment.find(params[:id])
    end

  # update
  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    if @comment.save
      redirect_to @post, notice: "Your comment was successfully rewritten!"
    else
      flash[:alert] = "Try again with all necessary info!"
       render :edit
     end
  end

  # destroy
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to @comment.post
  end

  private
  def comment_params
    params.require(:comment).permit(:title, :text, :post_id)
  end


end
