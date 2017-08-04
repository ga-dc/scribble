class CommentsController <ApplicationRecord

  def index
    @comments = Comment.all
  end

  def show
    @comments = Comment.find(params[:id])
  end

  def create
    @comment = Coment.new(params[:comment])
  end

  def Update
    @comment = Comment.find(params[:id])
    @comment.update(params[:comment])
    redirect_to "/comments/#{@comment.id}"
  end
