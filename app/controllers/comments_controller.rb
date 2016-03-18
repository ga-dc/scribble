class Comments < ApplicationController
    def new
        @comment = Comment.new
    end

    def create
        @comment = Comment.create!(comment_params)
        redirect_to :back
    end

    def edit
        @comment = Comment.find(params[:id])
        @comment.update(comment_params)
        redirect_to posts_url(@comment.post)
    end

    private
    def comment_params
        params.require(:comment).permit(:body)
    end
end
