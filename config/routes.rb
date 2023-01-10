Rails.application.routes.draw do
  resources :appointments do
    resources :notes
  end
  
  resources :calendars
  resources :patients
  resources :doctors
  resources :clinics

  get '/doctor/export', to: 'doctors#export'
  get '/patient/export', to: 'patients#export'
  get 'home', to: 'home#index'

  devise_for :accounts
  root "home#landing"
end
