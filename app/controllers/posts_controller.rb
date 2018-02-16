class PostsController < ApplicationController
# houses == posts
# https://git.generalassemb.ly/ga-wdi-exercises/hogwarts_rails
# https://git.generalassemb.ly/ga-wdi-exercises/game_of_thrones
  # comments == charcters
  # posts has many comments, comments belong to one post. 
  # house == post
  # characters == comments
  # <!--Prof Kevon explained to me how to display the comments on the same of the post.-->
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create!(post_params)
    redirect_to @post
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

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
    params.require(:post).permit(:author, :title, :text)
  end

end
