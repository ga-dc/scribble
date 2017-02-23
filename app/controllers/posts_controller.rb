class PostsController < ApplicationController

  #index
  def index
  @posts = Post.all
  end

  #new
  def new
    @posts = Post.new
  end

  #edit
  def edit
      @posts = Post.find(params[:id])
  end

  #show
  def show
    @posts = Post.find(params[:id])
  end

  # create
  def create
    @post = Post.create!(post_params)

    redirect_to post_path(@post)
  end

  def post
    @posts = Post.find(params[:id])
  end

  # update
    def update
      @posts = Post.find(params[:id])
      @posts.update(post_params)

      redirect_to "/posts/#{@posts.id}"
    end


  def destroy
    @post = Post.find(params[:id])
    @post.destroy

  redirect_to "/posts"

  end


  private
 def post_params
   params.require(:post).permit(:title, :author, :content, :likes)
 end

end
