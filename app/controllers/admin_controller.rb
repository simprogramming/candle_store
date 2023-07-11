class AdminController < ApplicationController
  before_action -> { authorize :admin }

  before_action :authenticate_user!

  def dashboard
  end
end
