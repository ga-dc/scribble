class PostsController < ApplicationController
  def index

  end

  def new
    @post = Post.new
    render :new
  end

  def create
    # create post from form fields.
    # params[:post] == {"title"=>"Test Title", "body"=>"Test 1"}
    post = Post.create!(post_params)
    redirect_to post_url(post)
  end

  def show
    @post = Post.find(params[:id])
    render :show
  end


  # create table :post do |t|
  # end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
