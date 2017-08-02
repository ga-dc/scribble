class PostsController < ApplicationController
# index
def index
  @posts = Post.all
end

# new
  def new
    @post = Post.new
  end

  # create
  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "#{@post.title} created successfully."
      redirect_to post_path(@post)
    else
      render :new
    end

  end

# show
def show
  @post = Post.find(params[:id])
  @comments = @post.comments
end

# edit
  def edit
    @post = Post.find(params[:id])
  end


  # update
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    flash[:notice] = "Post updated successfully."
    redirect_to post_path(@post)
  end

  # destroy
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:alert] = "Post deleted!"
    redirect_to posts_path
  end

private
def post_params
  params.require(:post).permit(:title, :content, :author, :img_url)
end
end
