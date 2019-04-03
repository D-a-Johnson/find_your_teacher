Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :lessons, only: [:index, :new, :create, :show, :destroy] do
    resources :appointments, only: [:create]
  end

  resources :users, only: [:new, :create, :show]
  resources :appointments, only: [:edit, :update, :destroy]
  delete '/lessons/:id', to: 'lessons#destroy', as: 'delete_lesson'
  delete '/appointments/:id', to: 'appointments#destroy', as: 'delete_appointment'
end
