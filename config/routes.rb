Rails.application.routes.draw do
  devise_for :users
  resources :activities do
    resources :notes, only: [:create], controller: 'activities/notes'
  end
  resources :categories

  root 'activities#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
