class CommentsController < ApplicaitonController

  def index
    @comments = Comments.all
  end

  def show
    @comments = Comment.find(params[:id])
  end

end
