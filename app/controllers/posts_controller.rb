class PostsController < ApplicationController

    def index
      @posts = Post.all.reverse
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
      @post = Post.create!(post_params) # do I need the ! if am using strong params?
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
