class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  private

  def logged_in?
    @current_user ||= Usuario.find(session[:usuario_id]) if session[:usuario_id]
  end

  helper_method :logged_in?
end
