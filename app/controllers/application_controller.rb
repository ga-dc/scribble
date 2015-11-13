class ApplicationController < ActionController::Base
  #check for 404
  rescue_from ActiveRecord::RecordNotFound, with: :couldnt_find_record
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  private
  #deal wth 404
  def couldnt_find_record
    redirect_to root_url, notice: "That record doesn't exist!"
  end
end
