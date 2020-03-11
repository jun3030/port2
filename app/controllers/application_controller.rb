class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
 
  def current_user?(user)
    user == current_user
  end
  
  
  
end
