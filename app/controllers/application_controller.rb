# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include LocaleHelper

  before_action :authenticate_user!
end
