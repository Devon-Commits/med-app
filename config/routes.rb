Rails.application.routes.draw do
  resources :appointments
  resources :calendars
  resources :patients
  resources :doctors
  resources :clinics

  devise_for :accounts
  root to: "home#index"
end
