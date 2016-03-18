class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if User.exists?(email: params[:user][:email])
      @user = User.find_by(email: params[:user][:email])
      if @user.password === params[:user][:password]
        puts "You're signed in!"
        session[:user_id] = @user.id
        redirect_to :root
      else
        puts "Wrong password!"
        redirect_to new_session_path
      end
    else
      puts "That user doesn't exist!"
      redirect_to new_session_path
    end
  end

  def destroy
    puts "You're signed out!"
    reset_session
    redirect_to :root
  end

end
