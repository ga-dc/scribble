#posts_path, for post#index
  def index
    @postss = Post.all
  end

  # new_post_path, for posts#new
  def new
    @post = Post.new
  end

 # posts_path, for posts#create
  def create
    @post = Post.create!(post_params)
    redirect_to post_path(@post)
  end

# post_path, for posts#show
  def show
    @post = Post.find(params[:id])
  end

  # edit_post_path, for posts#edit
  def edit
    @post = Post.find(params[:id])
  end

  # post_path, for posts#update
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to post_path(@post)
  end

  # post_path, for posts#destroy
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:pContent)
  end
end