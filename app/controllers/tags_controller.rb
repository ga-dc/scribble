class TagsController < ApplicationController
  def index
  end
  def show
  end
  def new
  end
  #creates a new tag, also creates a category here if it doesn;t exist
  def create
    #uses this boolean to check for a tag already existing.  I'm sure there's way better
    #methods for this
    bool = "true"
    @post = Post.find(params[:post_id])
    #if the category doesn't already exist...
    if !Category.find_by(descrip: params[:category])
      new_cat = Category.create!(descrip: params[:category]) #create the new category using params
      @post.tags.create!(category: new_cat) #attach the the post and new category to a tag
    else
      #check to see if a post already has a tag of that category attached to it.  sorry this is so ugly
      @post.tags.each do |tag|
        if tag.category.descrip == params[:category]
          bool = "false"
          flash[:alert] = "Tag creation failed, tag already exists."
        end
      end
      #if that category hasn't been attached to the post yet via tagging...
      if (bool == "true")
        #create new tag with the params category to attach to the post
        @post.tags.create!(category: Category.find_by(descrip: params[:category]))
      end
    end
    redirect_to post_path(@post)
  end
  #remove a tage here.  note: no way to destroy categories
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
  #strong params here, didn't have time to do this
  def cats_params

  end
end
