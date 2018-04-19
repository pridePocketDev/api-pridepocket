# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'campaigns#index'

  resources :campaign_donor_posts
  resources :campaign_hosts
  resources :campaign_posts
  resources :campaign_tags
  resources :campaigns
  resources :donations
  resources :donors
  resources :photos
  resources :privacy_levels
  resources :tags
  resources :wepay_accounts
  resources :wishlist_items
end
