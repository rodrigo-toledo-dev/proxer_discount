Rails.application.routes.draw do
  get 'users/index'
  devise_for :partners
  devise_for :clients
  devise_for :users
  root to: "home#index"
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
