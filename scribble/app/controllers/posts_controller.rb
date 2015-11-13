class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
    render :show
  end

  def new
    @post = Post.new
    render :new
  end

  def edit
    @post = Post.find(params[:id])
    render :new
  end

  def create
    # create post from form fields.
    # params[:post] == {"title"=>"Test Title", "body"=>"Test 1"}
    post = Post.create!(post_params)
    if post.save
      redirect_to post_url(post)
    else
      render :new
    #redirect_to post_url(post)
    end
  end

  def update
    @post = Post.find(params[:id])

  if @post.update(post_params)
    redirect_to @post
  else
    render 'edit'
  end

  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

  redirect_to post_path
  end

  # create table :post do |t|
  # end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
