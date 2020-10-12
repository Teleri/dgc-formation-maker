Rails.application.routes.draw do
  root to: 'projects#index'
  resources :projects do
    resources :slides
  end
  get 'reactdnd', to: 'pages#reactdnd'
end
