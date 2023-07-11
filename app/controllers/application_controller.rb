# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit::Authorization
  include NoticeHelper
  include LocaleHelper

  before_action :configure_permitted_parameters, if: :devise_controller?

  before_action :authenticate_user!

  def configure_permitted_parameters
    # Add extra permitted columns to devise for registration
    base_attrs = %i[first_name last_name email]
    # devise_parameter_sanitizer.permit(:invite, keys: base_attrs + [:role])
    # devise_parameter_sanitizer.permit(:accept_invitation, keys: base_attrs)
    devise_parameter_sanitizer.permit(:sign_up, keys: base_attrs)
  end
end
