Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  get '/about', to: 'pages#about_us', as: :about

  resources :categories, only: [:index, :show]
  resources :events, only: [:show]
end
