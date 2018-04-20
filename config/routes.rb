Rails.application.routes.draw do
  resources :morning_slots
  resources :notifications
  resources :post_attachments
  resources :posts
  root 'products#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users
  resources :welcome 
  resources :products
  resources :categories
  
  resources :items do
    get :autocomplete_item_list, on: :collection
  end 
  # get 'items/autocomplete_item_list'
  get '/welcome' => 'items#create_welcome'
  post 'items/create_welcome'
  get '/welcome' => 'items#new_welcome'
  post 'items/new_welcome'
  get '/welcome' => 'items#show_welcome'
  post 'items/show_welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
