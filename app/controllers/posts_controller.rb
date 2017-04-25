class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = " Success! The post was deleted."
    redirect_to root_path
  end

  def show
      @post = Post.find(params[:id])
      @comment = @post.comments
  end


  def edit
      @post = Post.find(params[:id])
    end


    # update
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    flash[:notice] = " Success! The post was updated."
    redirect_to post_path(@post)
    end


  def new
  @post = Post.new
  end

def create
  @post = Post.create!(post_params)
  flash[:notice] = " Success! Your post was added."
  redirect_to @post
  end



private
def post_params
  params.require(:post).permit(:author, :title, :text, :category)
end

end
