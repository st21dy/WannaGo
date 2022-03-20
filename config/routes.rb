Rails.application.routes.draw do
  root to: 'homes#top'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :list, only: [:new, :create, :index, :went, :destroy]
end
