Rails.application.routes.draw do
  root to: 'homes#top'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'sign_in', to: 'users#new'
  post 'sign_in', to: 'users#create'
  
  
  resources :lists, only: [:create, :index, :destroy]
  
  resources :post_images, only: [:create, :index]
  
  
end
