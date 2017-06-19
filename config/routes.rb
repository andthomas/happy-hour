Rails.application.routes.draw do

  root to: "venues#show"

  resources :users

  resources :venues
  #
  # get 'venues/new' => 'venues#new'
  #
  # get 'venues/edit'
  #
  # get 'venues/update'
  #
  # get 'venues/show'
  #
  # get 'venues/index' => 'venues#index'
  #
  # get 'venues/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
