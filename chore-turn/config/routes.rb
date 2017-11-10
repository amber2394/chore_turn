Rails.application.routes.draw do
  devise_for :users

  get 'welcome/index'

    resources :households do
      resources :chores do
        resources :users
      end
    end

    root 'welcome#index'
end
