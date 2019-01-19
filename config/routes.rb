Rails.application.routes.draw do
  root 'webhooks#index'

  resources :orders
  resources :webhooks
  
  namespace :api, constraints: { format: 'json' } do
    namespace :v1 do
      resources :orders
      resources :webhooks
    end
  end
end
