Rails.application.routes.draw do
  resources :appointments
  resources :calendars
  resources :patients
  resources :doctors
  resources :clinics

  get '/patient/export', to: 'patients#export'

  devise_for :accounts
  root "home#index"
end
