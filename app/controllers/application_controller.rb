class ApplicationController < ActionController::Base
 	before_filter :set_locale
 	protect_from_forgery

	def set_locale
		I18n.locale = params[:locale] if params[:locale]
	end

	private

	def current_user
	  @current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
	helper_method :current_user
	end