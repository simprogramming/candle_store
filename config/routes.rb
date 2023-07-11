# frozen_string_literal: true

Rails.application.routes.draw do
  scope controller: "admin" do
    get "dashboard"
  end

  resources :users

  devise_for :users
  put :change_locale, controller: "application"
  root "sites#home"
end
