Rails.application.routes.draw do
  get 'todos/index'
  root to: 'todos#index'
  devise_for :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
