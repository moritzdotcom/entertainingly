Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get '/about', to: 'pages#about_us', as: :about

  resources :categories, only: [:index, :show]
  resources :events, only: [:show]
end
