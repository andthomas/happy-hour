class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :fetch_user
  private
  def fetch_user
     @current_user = User.find_by :id => session[:user_id] if
     session[:user_id].present?

    session[:user_id] = nil unless @current_user.present?
   end
    def check_if_logged_in
        #check session variable
        redirect_to login_path unless @current_user.present?
        #this is common amongst all controllers, but not all instances need this method. purpose is for user to be redirected to log into website unless already logged in
    end

    def check_if_admin
      redirect_to root_path unless @current_user.present? && current_user.is_admin
    end
  end
