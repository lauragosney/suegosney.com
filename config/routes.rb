Rails.application.routes.draw do


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "paintings#index"

  resources :paintings

  get "about", to: "pages#about"
  get "contact", to: "pages#contact"

end
