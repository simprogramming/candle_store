# frozen_string_literal: true

Rails.application.routes.draw do

  scope :admin, as: :admin, controller: "admin" do
    get "dashboard"
  end

  devise_for :users
  put :change_locale, controller: "application"
  root "sites#home"
end
