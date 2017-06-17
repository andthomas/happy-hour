Rails.application.routes.draw do

  root to: "users#index"

  get 'users/new' => 'users#new'

  get 'users/create'

  get 'users/edit'

  get 'users/update'

  get 'users/show'

  get 'users/index'

  get 'users/destroy'

  get 'venues/new'

  get 'venues/create'

  get 'venues/edit'

  get 'venues/update'

  get 'venues/show'

  get 'venues/index'

  get 'venues/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
