class commentsController < ApplicationController

  def index
    @comment = comment.all
  end

  def show
    @comment = comment.find(params[:id])
  end

  def new
    @comment = comment.new
  end

  def edit
    @comment = comment.find(params[:id])
  end

  def update
    @comment = comment.find(params[:id])
    @comment.update(comment_params)
      redirect_to @comment
  end

  def create
    @comment = comment.create(comment_params)

    if @comment.save
      redirect_to @comment

    else
      flash[:alert] = "Topic requires title & 5char"
      render 'new'
    end
  end

  def destroy
    @comment = comment.find(params[:id])
    @comment.destroy
    redirect_to action: "index"
  end

  private
    def comment_params
      params.require(:comment).permit(:topic, :text)
    end
  end
