Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/index'
    devise_for :users

    resources :chores
    resources :households
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'welcome#index'
end
