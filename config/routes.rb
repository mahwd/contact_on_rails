Rails.application.routes.draw do


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'home#index'
  devise_for :users
  resources :forms
  get 'sessions/create'
  get 'sessions/destroy'
  get 'auth/:provider/callback', to:'sessions#create'
  delete 'sign_out', to:'sessions#destroy', as:'sign_out'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
