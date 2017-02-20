class PostsController < ApplicationController

  def index
    @posts = Post.all.sort_by do |post|
      post[:created_at]
    end
    @posts.reverse!
  end

  def show
    @post = Post.find(params[:id])
  end

  def new_comment
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def create_comment
    @post = Post.find(params[:id])
    @comment = Comment.create!(comment_params)

    redirect_to "/posts/#{@post.id}"
  end

  def new_post
    @post = Post.new
  end

  def create_post
    @post = Post.create!(post_params)

    redirect_to "/posts/#{@post.id}"
  end

  def edit_post
    @post = Post.find(params[:id])
  end

  def update_post
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to "/posts/#{@post.id}"
  end

  def destroy_post
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to "/"
  end


  def edit_comment
    @comment = Comment.find(params[:id])
  end

  def update_comment
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)

    redirect_to "/posts/#{@comment.post_id}"
  end

  def destroy_comment
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to "/posts/#{@comment.post_id}"
  end


  private
  def comment_params
    params.require(:comment).permit(:author, :content, :likes, :post_id)
  end

  def post_params
    params.require(:post).permit(:title, :author, :content, :likes)
  end


end
