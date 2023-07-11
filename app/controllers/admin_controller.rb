class AdminController < ApplicationController
  include AdminSideHelper

  before_action -> { authorize :admin }
  def dashboard
    skip_policy_scope
  end
end
