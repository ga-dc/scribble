class PostsController < ApplicationController
  # before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1

  def show
    @post = Post.find(params[:id])
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  def create
    @post = Post.create!(post_params)
    redirect_to post_path(@post)
  end

  # PATCH/PUT /posts/1
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to post_path(@post)
  end

  # DELETE /posts/1
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
    def post_params
      params.require(:post).permit(:title, :content)
    end
end
