class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) # https://qiita.com/kaito121855/items/e1a80da8557258c497dc
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
