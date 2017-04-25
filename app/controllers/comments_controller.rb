class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  # POST /comments
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(comment_params)
    redirect_to post_path(@post)
  end

  # PATCH/PUT /comments/1
  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to post_path(@post)
  end

  # DELETE /comments/1  
  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  private
    def comment_params
      params.require(:post).permit(:content)
    end
end
