Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :users, only: [:index, :show]
  resources :posts, only: [:index, :show] do 
  get 'tldr'
  end
  resources :groups, only: [:index, :show]
  resources :topics, only: [:index, :show]
end
