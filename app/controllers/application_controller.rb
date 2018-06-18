class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include SessionsHelper
  
  # ロケール設定
  before_filter :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
  
  #URL Paramsを元にロケールを設定する
  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end

  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
end
