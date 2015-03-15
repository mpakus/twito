require 'sidekiq/web'

Rails.application.routes.draw do
  root 'tweets#index'
  resources :tweets, only: [:index, :create, :show]
  mount Sidekiq::Web => '/sidekiq'
end
