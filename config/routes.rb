Rails.application.routes.draw do
  root 'pages#index'

  resources :profiles, only: [:create, :show] do
    resources :profile_steps, only: [:show, :update]
  end
end
