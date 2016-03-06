class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end


  # fuzzy search maybe? could also maybe use simple search and create a controller and model to funnel the routes thru?  Options...figure em out.
  def all_tables
    ActiveRecord::Base.connection.tables
  end
  helper_method :all_tables

end
