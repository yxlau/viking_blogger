class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def require_login
    unless logged_in?
      redirect_to root_path
      return false
    end
  end
end
