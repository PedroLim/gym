Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'status' => 'status#index'

  resources :muscular_groups

  root to: 'muscular_groups#index'
end
