# frozen_string_literal: true

Rails.application.routes.draw do
  resources :people
  namespace :membership do
    resources :church_services
  end
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root 'dashboard#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
