Rails.application.routes.draw do
  root to: 'pages#home'
  ressources :gardens do
    ressources :plants, only: [:create]

  end

  ressources :plants, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
