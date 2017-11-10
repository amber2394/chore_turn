Rails.application.routes.draw do
  devise_for :users

  get 'welcome/index'
    resources :chores
    resources :households
  
    root 'welcome#index'
end
