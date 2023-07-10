class UserPolicy < ApplicationPolicy
  include AdminBasePolicy

  def permitted_attributes
    %i[first_name last_name email role password password_confirmation photo password]
  end
end
