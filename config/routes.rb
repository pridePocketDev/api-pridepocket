# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do

  resources :campaign_tags
  resources :tags
  resources :campaign_donor_posts
  resources :campaign_posts
  resources :wishlist_items
  resources :donations
  resources :photos
  resources :campaigns
  resources :privacy_levels
  resources :donors
  resources :wepay_accounts
  devise_for :users

  root to: 'campaign_hosts#index'

  resources :campaign_hosts
end
