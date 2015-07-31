class PostsController < ApplicationController

  def index
    @posts = Post.all.order(:id).reverse
  end

  def new
  end

  def create
    @post = Post.new( post_params )
    @post.update( date_posted: Time.now.strftime("%B %d, %Y") )
    redirect_to("/posts/#{@post.id}")
  end

  def edit
    @post = Post.find( params[:id] )
  end

  def update
    @post = Post.find( params[:id] )
    @post.update( post_params )
    redirect_to("/posts/#{@post.id}")
  end

  def show
    @post = Post.find( params[:id] )
  end

  def destroy
    @post = Post.find( params[:id] )
    @post.destroy
    redirect_to("/")
  end

# workaround to be able to post new post
  private
    def post_params
      params.require(:post).permit(:author, :title, :summary, :body, :video_url, :topic)
    end

end
