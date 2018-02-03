class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

# ログインしていないCustomerは強制的にログイン画面にリダイレクト
  # before_action :authenticate_customer!

# deviseの画面にいった場合、devise_controllerはヘルパーメソッド
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_attrs = %i[name email password password_confirmation remember_me image]
    devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
    devise_parameter_sanitizer.permit(:account_update, keys: added_attrs)
  end
end
