Rails.application.routes.draw do
  root to: 'pages#home'
  resources :gardens do
    resources :plants, only: [:create]

  end

  resources :plants, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
