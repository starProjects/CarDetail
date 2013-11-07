class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def after_sign_in_path_for(resource)
    dashboard_index_path
  end

  def after_sign_up_path_for(resource)
    dashboard_index_path
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :address, :email, :phone_1, :phone_2, :password, :password_confirmation) } 
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:first_name, :last_name, :address, :email, :phone_1, :phone_2, :password, :password_confirmation, :current_password) } 
  end

 	layout :layout

  private
  def layout
    # only turn it off for login pages:
    is_a?(Devise::SessionsController) ? "empty" : "application"
  end

  

end
