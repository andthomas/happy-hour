Rails.application.routes.draw do

  root to: "venues#index"

  get    '/login' => 'session#new'
  post   '/login' => 'session#create'
  delete '/login' => 'session#destroy'   

  resources :users

  resources :venues

  resources :deals

  resources :happyhours

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
