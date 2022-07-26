Rails.application.routes.draw do
  root 'pages#index'

  resources :profile_steps, only: [:show, :update]
end
