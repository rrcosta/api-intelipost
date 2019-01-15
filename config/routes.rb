Rails.application.routes.draw do
  resources :orders
  resources :webhooks
  
  root 'webhooks#index'
end
