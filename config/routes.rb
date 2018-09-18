Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks, only: [:index, :create, :edit, :update, :delete]
end
