Rails.application.routes.draw do
 
  resources :lectures
  resources :courses
  get 'welcome/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 
  root 'welcome#index'
end