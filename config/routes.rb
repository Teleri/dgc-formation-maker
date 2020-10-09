Rails.application.routes.draw do
  root to: 'projects#index'
  resources :projects
  resources :members
  get 'reactdnd', to: 'pages#reactdnd'
end
