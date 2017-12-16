Rails.application.routes.draw do
  devise_for :users
  get 'details/create'
  resources :homework, only: :index do
  	resources :details, only: :create
  end
  root to: 'homework#index'
  resources :details, only: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
