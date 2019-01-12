Rails.application.routes.draw do
  resources :webhooks
  
  root 'webhooks#index'
end
