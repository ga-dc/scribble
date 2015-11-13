class UsersController < ApplicationController

  def sign_up
  end

  def sign_up!
    user = User.new(
      username: params[:username],
      password_digest: params[:password]
    )
    if params[:password_confirmation] != params[:password]
      message = "Your passwords don't match!"
    elsif user.save
      message = "Your account has been created!"
    else
      message = "Your account couldn't be created. Did you enter a unique username and password?"
    end
    puts message
    redirect_to action: :sign_up
  end

  def sign_in
  end

  def sign_in!
    @user = User.find_by(username: params[:username])
    if !@user
      message = "This user doesn't exist!"
    elsif @user.password_digest != params[:password]
      message = "Your password's wrong!"
    else
      message = "You're signed in, #{@user.username}!"
    end
    flash[:notice] = message
    redirect_to action: :sign_in
  end

  def sign_out
    flash[:notice] = "Thank you for visiting!"
    redirect_to "/sign_in"
  end

end
