class ApplicationController < ActionController::Base
  protect_from_forgery
  
  #This method will fetch the current user from the session.
  private
  def current_admin
    @current_admin ||= Admin.find(session[:admin_id]) if session[:admin_id]
  end

  helper_method :current_admin
end
