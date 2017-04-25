class CommentsController < ApplicationController
    # index
    def index
        @comments = Comment.all
    end

    # new
    def new
        @post = Post.find(params[:post_id])
        @comment = Comment.new
    end

    # create
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create!(comment_params)

        redirect_to post_path(@post)
    end

    #show

    # edit
    def edit
        @post = Post.find(params[:post_id])
        @comment = Comment.find(params[:id])
    end

    # update
    def update
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
        @comment.update(comment_params)

        redirect_to post_path(@post)
    end

    # destroy
    def destroy
        @post= Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
        @comment.destroy

        redirect_to posts_path
    end

    private
    def comment_params
        params.require(:comment).permit(:body)
    end
end
