class CommentsController < ApplicatonController

  def index
    @comments = Comments.all
  end

  def show
    @comments = Comments.find(params[:id])
  end

end
