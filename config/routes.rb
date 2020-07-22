Rails.application.routes.draw do
  root to: 'projects#index'
  resources :projects
  resources :members
end
