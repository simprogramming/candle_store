class AdminPolicy < ApplicationPolicy
  include AdminBasePolicy

  def dashboard?
    user.admin?
  end
end
