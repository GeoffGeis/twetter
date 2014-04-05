class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_filter(:find_user)

  protected

  # See section on Strong Parameters: https://github.com/plataformatec/devise
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:sign_up) << :username
  end

  def find_user
    if params[:username]
      @user = User.where(:username => params[:username]).first
    else
      @user = current_user
    end
  end
end
