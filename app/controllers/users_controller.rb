class UsersController < ApplicationController

  def sign_up
  end

  def sign_up!
    user = User.new(
    username: params[:username],
    password_digest: params[:password]
    )
    if params[:password_confirmation] != params[:password]
      msg = 'Your passwords do not match.'
    else
      msg = 'Your account could not be created. Username not available or invalid password.'
    end
    puts msg
    redirect_to action: :sign_up
  end

  def sign_in
  end

  def sign_in!
    @user = User.find_by(username: params[:username])
    if !@user
      msg = 'This user does not exist.'
    elsif @user.password_digest != params[:password]
      msg = 'Your password is strange.'
    else
      msg = "You're signed in, #{@user.username}!"
    end
    puts msg
    redirect_to action: :sign_in
  end

  def sign_out
    puts 'You are signed out.'
    redirect_to root_url
  end

end
