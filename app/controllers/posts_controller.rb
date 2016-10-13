class PostsController < ApplicationController

def index
  @posts = Post.all
end #index

def show
  @post = Post.find(params[:id])
end  #show

def edit
    @post = Post.find(params[:id])
end

def update
  @post = Post.find(params[:id])
  @post.update(post_params)
  redirect_to @post
end

def new
  @post = Post.new
end #new

def create
  @post = Post.new(post_params)

  @post.save
  redirect_to @post
end

def destroy
 @post = Post.find(params[:id])


 @post.comments.each do |comment|
   comment.destroy
 end

 @post.destroy
 redirect_to posts_path
end



private
  def post_params
    params.require(:post).permit(:title, :article,:author_id, :comments_enabled,
    :date_published,:banner_url,:views,:enabled)
  end


end # PostsController
