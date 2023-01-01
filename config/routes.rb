Rails.application.routes.draw do
  resources :patients
  resources :doctors
  resources :clinics

  devise_for :accounts
  root to: "home#index"
end
