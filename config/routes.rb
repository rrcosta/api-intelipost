Rails.application.routes.draw do
  resources :sales_platforms
  root 'webhooks#index'

  resources :webhooks
  
  namespace :api, constraints: { format: 'json' } do
    namespace :v1 do
      resources :webhooks
    end
  end
end
