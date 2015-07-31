class PostsController < ApplicationController

    def index
      @posts = User.find(session[:user]["id"]).posts
    end
    def show
      @post = Post.find(params[:id])
      @comment = @post.comments.all
      # @comment = Comment.find(params[:id])
      # @comment = @post.comments
    end
    def new
      @post = Post.new
    end
    def create
      @user = User.find(session[:user]["id"])
      @post = @user.posts.create!(post_params)
      redirect_to post_path(@post)
    end
    def edit
      @post = Post.find(params[:id])
    end
    def update
      @post = Post.find(params[:id])
      @post.update(post_params)
      redirect_to post_path(@post)
    end
    def destroy
      @post = Post.find(params[:id])
      @post.destroy
      redirect_to "/" # may need to change this up
    end
    private
    def post_params
          params.require(:post).permit(:author, :title, :article)
    end
end
