Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'campaign_hosts#index'

  resources :campaign_hosts
end
