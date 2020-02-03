class ApplicationController < ActionController::Base
  #before_action :user_is_logged_in
  protect_from_forgery with: :exception
  include SessionsHelper

  def authenticate
    unless current_user.present?
  	  redirect_to root_url
    end
  end
end
