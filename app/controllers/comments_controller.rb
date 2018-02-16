# USED TUNR-RAILS-5 LESSON AS A REFERENCE FOR THIS FILE ALONG WITH PREVIOUS OFFICE HOURS. SEE REFERENCES.md FILE FOR LINK
class CommentsController < ApplicationController
    # https://git.generalassemb.ly/ga-wdi-exercises/game_of_thrones
    # comments == charcters
    # posts has many comments, comments belong to one post. 
    # house == post
    # characters == comments
        def index
            @comments = Comment.all
          end
        
          def show
            @comment = Comment.find(params[:id])
          end
        
          def new
            @comment = Comment.new
          end
        
          def create
            @comment = Comment.create!(comment_params)
            redirect_to "/comments/#{@comment.id}"
          end
      
          def edit
            @comment = Comment.find(params[:id])
          end
        
          def update
            @comment = Comment.find(params[:id])
            @comment.update(comment_params)
            redirect_to "/comments/#{@comment.id}"
          end
        
          def destroy
            @comment = Comment.find(params[:id])
            @comment.destroy
            redirect_to "/comments"
          end
    
          private
          def comment_params
            params.require(:comment).permit(:author, :content, :post_id)
          end
        end
# USED TUNR-RAILS-5 LESSON AS A REFERENCE FOR THIS FILE ALONG WITH PREVIOUS OFFICE HOURS. SEE REFERENCES.md FILE FOR LINK -->