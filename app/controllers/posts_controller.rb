class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.valid?
      flash[:notice] = "Post added"
      @post.save
      redirect_to @post
    else
      flash[:alert] = "Post rejected"
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    test_post = Post.new(post_params)
    if test_post.valid?
      flash[:notice] = "Edit complete"
      @post.update(post_params)
      redirect_to post_path()
    else
      flash[:alert] = "Edits rejected"
      render :edit
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments
  end

  def destroy
    @post = Post.find(params[:id])
    @post.tags.each do |t|
      t.destroy
    end
    @post.destroy
    redirect_to posts_path()
  end

  private
  def post_params
    params.require(:post).permit(:body, :title, :author, :all_tags)
  end

end
