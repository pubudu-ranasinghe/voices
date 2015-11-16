class Minister::ParameterSanitizer < Devise::ParameterSanitizer
  def sign_in
    default_params.permit(:username, :password, :remember_me)
  end
  def sign_up
    default_params.permit(:username, :email, :password, :password_confirmation, :remember_me, :profile, :name, :title)
  end
  def account_update
    default_params.permit(:username, :email, :password, :password_confirmation, :current_password, :profile, :name, :title)
  end
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me, :profile, :name, :title) }
  #   devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password, :profile, :name, :title) }
  # end

  protected

  def devise_parameter_sanitizer
    if resource_class == Minister
      Minister::ParameterSanitizer.new(Minister, :minister, params)
    else
      super # Use the default one
    end
  end
end
