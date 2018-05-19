Rails.application.routes.draw do
 
  resources :lectures do
    member do

    put "like" =>"lectures#upvote"
    put "dislike" =>"lectures#downvote"
    post :spam

    end


  end
  resources :courses
  get 'welcome/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
 
  root 'welcome#index'
  mount Commontator::Engine => '/commontator'
end
