class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # check for current_user
  # unless current_user
  #   redirect_to <sign-in-page>
end
