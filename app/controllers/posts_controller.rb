class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
    @comments = Comment.where(post_id: @post.id)
  end
  def new_comment
    @new_comment = Comment.new
  end
  def create_comment
    @new_comment = Comment.new(comment_params)
    @new_comment.post_id = params[:id]
    @new_comment.save
    redirect_to "/posts/#{params[:id]}"
  end
  def new_post
    @new_post = Post.new
  end
  def create_post
    @new_post = Post.create(post_params)
    redirect_to "/posts"
  end
  def delete
    @toss = Post.find(params[:id])
    @toss.delete
    redirect_to "/posts"
  end
  def update
    @update = Post.find(params[:id])
  end
  def update_post
    @update = Post.find(params[:id])
    @update.update(post_params)
    redirect_to '/posts'
  end
  private
  def comment_params
    params.require(:comment).permit(:author, :text, :post_id)
  end
  def post_params
    params.require(:post).permit(:author, :text)
  end

end
