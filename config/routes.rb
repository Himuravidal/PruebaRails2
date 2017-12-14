Rails.application.routes.draw do
  get 'users/show'

  # get 'todos/index'
  root to: 'todos#index'
  devise_for :users
  resources :users do
    resources :pending_tasks, only:[:update]
  end
   resources :todos, only:[:index, :show]
   resources :pending_tasks, only:[:create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
