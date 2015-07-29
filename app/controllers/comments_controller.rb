class CommentsController < ApplicationController

  #a list of all comments on a certain post
  #stored in a div tied to that post
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments.all
  end

  #new comment, tied to Posts / stored in HTML DIV under post
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  #save comment
  def create
    @post = Post.find(params[:post_id])
    @comment = Post.comments.create(comment_params)

    redirect_to post_comments_path(@post, @comment)
  end

  #mostly just a way to the edit function--
  #maybe you can incorporate a modal here?
  def show
    @post = Post.find(params[:post_id])
    @comment = Post.find(params[:id])
  end

  #edit existing comment. Can editing be done in a modal
  #or FB-like html hide/show area
  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  #save edit updates
  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)

    redirect_to post_comments_path(@post, @comment)
  end

  #delete blog post
  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to post_comments_patj( @post )
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end

end
