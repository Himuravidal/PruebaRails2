Rails.application.routes.draw do
  # get 'users/show'
  # get 'todos/index'
  resources :todos, only:[:index, :show]
  root to: 'todos#index'
  resources :pending_tasks, only:[:update]

  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

   


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
