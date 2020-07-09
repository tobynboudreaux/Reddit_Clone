Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :users, only: [:index, :show] do
    resources :follows
  end
  resources :posts, only: [:index, :show, :new, :create] do 
    resources :likes
    get 'tldr'
  end
  resources :topics, only: [:index, :show]
end
