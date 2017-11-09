Rails.application.routes.draw do

  devise_for :users

  resources :chores
  resources :households
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'chores#new'
end
