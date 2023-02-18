Rails.application.routes.draw do
  resources :daily_reports
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
end
