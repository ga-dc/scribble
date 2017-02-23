class PostsController < ApplicationController

  #index
  def index
  @posts = Post.all
  end

  #new
  def new
    @post = Post.new
  end

  #edit
  def edit
      @post = Post.find(params[:id])
  end

  #show
  def show

    @post = Post.find(params[:id])
    @comment = @post.comments.find(params[:id])
  end

  # create
  def create
    @post = Post.create!(post_params)

    redirect_to post_path(@post)
  end

  def post
    @post = Post.find(params[:id])
  end

  # update
    def update
      @post = Post.find(params[:id])
      @post.update(post_params)

      redirect_to "/posts/#{@post.id}"
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
