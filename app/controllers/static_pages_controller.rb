class StaticPagesController < ApplicationController
  def home
     log_out if cookies.signed[:user_id].nil? || cookies[:remember_token].nil?
  end

end
