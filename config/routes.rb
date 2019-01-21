Rails.application.routes.draw do
  root 'webhooks#index'

  resources :webhooks
  resources :sales_platforms, except: :show

  namespace :api, constraints: { format: 'json' } do
    namespace :v1 do
      resources :webhooks
      resources :sales_platforms, except: :show
    end
  end
end
