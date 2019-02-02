Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:index, :new, :create, :destroy, :edit, :update]

  resources :schedules, only: [:index, :new, :create]

  resources :backoffice, only: [:index]

  resources :welcome, only: [:index]

  resources :services, only: [:index, :new, :create, :destroy, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
