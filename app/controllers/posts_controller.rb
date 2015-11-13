class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  # http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  def set_post
  end

  def sort
    session[:sort_by] = params[:sort_by]
    redirect_to posts_path
  end

  def delete_session
    session.delete(:last_viewed_post)
    redirect_to posts_path
  end

  def index
    # @last_viewed_post = Post.find(session[:last_viewed_post_id])
    @posts = Post.all.order(session[:sort_by])
      if current_user
      @posts = current_user.posts
    else
      @posts = Post.all
    end
  end

  # new
  def new
    @post = Post.new
  end

  # edit
  def edit
    @post = Post.find(params[:id])
  end

  # create
  def create
    @post = current_user.posts.create(post_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  #show
  def show
    @post = Post.find(params[:id])
    # session[:last_viewed_post_id] = @post.id
    @comment = @post.comments.build
  end

  # update
  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  # destroy
  def destroy
  @post = Post.find(params[:id])
  @post.destroy
  redirect_to @post
end

  private
  def post_params
    params.require(:post).permit(:title, :text)
  end
end
