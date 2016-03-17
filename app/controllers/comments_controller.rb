class CommentsController < ApplicationController
  # customary in rails to put actions in order like:
  # index, show, new, edit, create, update, destroy
  def index

  end

  def show

  end

  def new

  end

  def edit

  end

  def create
    # creates a new comment, linked to a particular article
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)

    # calls posts#show action and sends user back to the article the comment was made on
    redirect_to post_path(@post)
  end

  def update

  end

  def destroy

  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :content)
  end

end
