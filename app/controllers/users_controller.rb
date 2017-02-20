class UsersController < ApplicationController
  def index
    @users = User.all
  end

  # new
  def new
    @user = User.new
  end

  # create
  def create
    @user = User.create!(user_params)
    session[:user_id] = @user.id
    redirect_to "/users/#{@user.id}"
  end

  #show
  def show
    @user = User.find(params[:id])
  end

  # edit
  def edit
    @user = User.find(params[:id])
    redirect_to root_url unless @current_user == @user
  end

  # update
  def update
    @user = User.find(params[:id])
    redirect_to root_url unless @current_user == @user
    @user.update(user_params)
    redirect_to "/users/#{@user.id}"
  end

  # destroy
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to "/users"
  end

  private
  def user_params
    params.require(:user).permit(:user, :email)
  end
end
