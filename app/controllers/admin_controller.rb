class AdminController < ApplicationController
  before_action -> { authorize :admin }

  def dashboard
  end
end
