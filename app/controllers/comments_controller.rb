class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params.merge(user: current_user))
    if @comment.save
    redirect_to post_path(@comment.post), notice: "Comment successfully created"
    else
      flash[:alert] = "Fields not entered correctly"
      render :new
    end
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    if @comment.user != current_user
    redirect_to post_path(@post)
    flash[:alert] = "Only the author of the comment can edit!"
end
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])

    if @comment.user != current_user
      if @comment.update(comment_params)
      redirect_to post_path(@comment.post), notice: "Comment successfully updated"
      else
      flash[:alert] = "Fields not entered correctly"
      render :edit
      end
    else
      flash[:alert] = "Only the author of this comment can edit"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    if @comment.user == current_user
      @comment.destroy
    else
      flash[:alert] = "Only the author of this comment can delete"
    end
    redirect_to post_path(@comment.post)
  end

  private
  def comment_params
    params.require(:comment).permit(:title, :body, :post_id)
  end
end
