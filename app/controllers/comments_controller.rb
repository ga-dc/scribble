class CommentsController < ApplicationController

  def index
    @comment = Comment.all.order(:id)
    # @comment = Comment.all.order(:id).reverse
  end

        # #######################################
        # SHOW ME COMMENTS
  def show
    @comment = Comment.find(params[:id])
  end

        # #######################################
        # MAKE ME A COMMENT
        #   SHAZAM!  YOURE A COMMENT
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(params[:comment])
    if @comment.save
      redirect_to "/comments/#{@comment.id}"
    else
      redirect_to "/comments/new"
    end
  end


        # #######################################
        # CHANGE THIS DUMB COMMENT
        #
        # def edit
        #   @comment = Comment.find(params[:id])
        # end
        #
        # def update
        #   @comment = Comment.find(params[:id])
        #   @comment.update(params[:comment])
        #   redirect_to "/comments/#{@comment.id}"
        # end
        #
        # #######################################
        # DESTROY THIS DUMB COMMENT
        # def destroy
        #   @comment = Comment.find(params[:id])
        #   @comment.destroy
        #   redirect_to "/"
        # end
        #

end
