Rails.application.routes.draw do
  resources :patients
  resources :doctors
  resources :clinics

  devise_for :accounts
  get 'home/calendar'
  root to: "home#index"
end
