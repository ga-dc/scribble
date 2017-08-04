class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts

  def edit
  @post = Post.find(params[:id])
  if @post.user != current_user
    flash[:alert] = "Only the author of the post can edit"
    redirect_to post_path(@post)
  end
end

def update
  @post = Post.find(params[:id])
  if @post.user === current_user
    @post.update(post_params)
  else
    flash[:alert] = "Only the author of the post can edit"
  end
  redirect_to post_path(@post)
end

end
