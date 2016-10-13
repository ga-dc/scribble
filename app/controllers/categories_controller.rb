class CategoriesController < ApplicationController

def show
  @category = Category.find(params[:id])
end

def create
  @post = Post.find(params[:post_id])
  if Category.where(name: params[:category][:name]).first
    @category = Category.where(name: params[:category][:name]).first
  else
    @category = Category.create!(strong_params)
  end
  Tag.create(post: @post, category: @category)
  redirect_to post_path(@post)
end

private
def strong_params
  params.require(:category).permit(:name)
end

end
