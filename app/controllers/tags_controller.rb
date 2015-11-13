class TagsController < ApplicationController
  def index
  end
  def show
  end
  def new
  end
  def create
    bool = "true"
    @post = Post.find(params[:post_id])
    if !Category.find_by(descrip: params[:category])
      new_cat = Category.create!(descrip: params[:category])
      @post.tags.create!(category: new_cat)
    else
      @post.tags.each do |tag|
        if tag.category.descrip == params[:category]
          bool = "false"
        end
      end
      if (bool == "true")
        @post.tags.create!(category: Category.find_by(descrip: params[:category]))
      end
    end
    redirect_to post_path(@post)
  end
  def destroy
    @post = Post.find(params[:post_id])
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to category_path(@tag.category)
  end
  def edit
  end
  def update
  end
  private
  def cats_params
    params.require(:comment).permit(:author, :text)
  end
end
