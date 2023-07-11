class UsersController < ApplicationController
  before_action :set_user, only: %i[edit update show]
  before_action -> { authorize @user || User }

  layout "admin"

  decorates_assigned :user, :users
  add_controller_helpers :users, only: :index

  def index
    @users = policy_scope(User).order(:first_name, :last_name)
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(permitted_attributes(User))

    if @user.save
      redirect_to @user, notice: create_successful_notice
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
  end

  private

  def set_user
    @user = policy_scope(User).find(params[:id])
  end

  def user_params
    return permitted_attributes(User) if params.dig(:user, :password).present?

    permitted_attributes(User).except(:password, :password_confirmation)
  end
end
