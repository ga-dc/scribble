class CommentsController < ApplicationController

  # index
  def index
      @post = Post.find(params[:post_id])
      @comment = @post.comments
  end

#   new_post_comment_path, GET /posts/:post_id/comments/new, comments#new
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

#   post_comments_path, POST /posts/:post_id/comments, comments#create
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(comment_params)

    redirect_to artist_path(@artist)
  end

#   post_comment_path,	GET	/posts/:post_id/comments/:id, comments#show
  def show
    @comment = Comment.find(params[:id])
  end

#   edit_post_comment_path, GET /posts/:post_id/comments/:id/edit, comments#edit
  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

#   post_comment_path,	PUT /posts/:post_id/comments/:id, comments#update
  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)

    redirect_to post_comment_path(@post, @comment)
  end

#   post_comment_path,	DELETE /posts/:post_id/comments/:id, comments#destroy
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to post_path(@comment.post)
  end

  private
  def comment_params
    params.require(:comment).permit(:cContent)
  end
end