class PostsController < ApplicationController
  # index
  def index
    @posts = Post.all
    #render :index      You can add this if you want to change the default view file
  end

  # show
  def show
    @post = Post.find(params[:id])
  end

  # new
  def new
    @post = Post.new
  end

  # create
  def create
    @post = Post.create!(posts_params)
    redirect_to "/posts/#{@post.id}"
  end
  #
  # # edit
  # def edit
  #   @artist = Artist.find(params[:id])
  # end
  #
  # # update
  # def update
  #   @artist = Artist.find(params[:id])
  #   @artist.update(artist_params)
  #
  #   redirect_to "/artists/#{@artist.id}"
  # end
  #
  # # destroy
  # def destroy
  #   @artist = Artist.find(params[:id])
  #   @artist.destroy
  #   redirect_to "/artists"
  # end

  private
  def posts_params
    params.require(:post).permit(:title, :user, :content)
  end
end
