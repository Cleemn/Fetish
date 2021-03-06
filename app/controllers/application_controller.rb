class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :password, :user_name, :birth_date, :avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:user_name, :gender, :birth_date, :avatar, :description, :localisation])
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end
