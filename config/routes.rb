Rails.application.routes.draw do
  resources :locks
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'link/(:code)', to: 'locks#link', as: 'link'
  get 'login', to: 'sessions#new', as: 'login'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'logout', to: 'sessions#destroy', as: 'logout'
  root "sessions#redirecting"

end
