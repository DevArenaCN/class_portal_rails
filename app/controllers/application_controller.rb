class ApplicationController < ActionController::Base
  def current_user
    return "admin" unless session[:user_id]
    @current_user ||= Admin.find(session[:user_id])
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  # before_filter :set_current_user
  #
  # def current_ability
  #   @current_ability ||= Ability.new(current_user)


  # end
end
