Rails.application.routes.draw do
  root 'tasks#index'
  resources :task_activations, only: [:update]
  resources :tasks, only: [:index, :create, :edit, :update, :destroy]
end
