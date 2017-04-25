class CommentsController <ApplicationController
  def index
    @comments = Comment.all
  end
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end
  def create
    puts params
    @post = Post.find(params[:post_id])
    @post.comments.create!(comment_params)
    redirect_to post_path(@post)
  end
  def destroy
   @comment = Comment[params[:id]]
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :text)
  end
end
