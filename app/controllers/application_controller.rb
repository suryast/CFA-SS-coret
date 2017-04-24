class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :except => [:home, :about, :contact, :history]

  protect_from_forgery with: :exception

  include CanCan::ControllerAdditions

  before_action :configure_permitted_parameters, if: :devise_controller?


  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

  protected

  def configure_permitted_parameters
    added_attrs = [:first_name, :last_name, :email, :password, :password_confirmation, :remember_me, :avatar]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
