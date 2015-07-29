class PostsController < ApplicationController


    def index
      @posts = Post.all
    end
    def show
      @post = Post.find(params[:id])
    end
    def new
      @post = Post.new
    end
    def create
      @post = Post.new(post_params)
      if @post.save
        redirect_to "/posts/#{@post.id}"
      else
        redirect_to "/posts/new"
      end
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
      redirect_to "/"
    end
    private
    def post_params
          params.require(:post).permit(:author, :title, :article)
    end




end
