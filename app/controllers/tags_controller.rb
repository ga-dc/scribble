class TagsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @tag = Tag.new
  end

  def create
    @post = Post.find(params[:post_id])
    @title = tag_params[:category].titleize
    @category = Category.find_or_create_by(title: @title)
    if @post.categories.find_by(title: @title)
    else
      Tag.create(post: @post, category: @category)
    end
    redirect_to "/posts/#{@post.id}"
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
  def tag_params
    params.require(:tag).permit(:category)
  end

end
