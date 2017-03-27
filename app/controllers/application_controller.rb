class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_account, :logged_in?, :redirect_login

  def current_account
  	@current_account ||= Account.find(session[:account_id]) if session[:account_id]
  end

  def logged_in?
  	!!current_account
  end

  def redirect_login
  	redirect_to '/' if !logged_in?
  end
end
