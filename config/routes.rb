Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get '/about', to: 'pages#about_us', as: :about
  get '/privacy/facebook', to: 'pages#facebook_privacy', as: :facebook_privacy

  resources :categories, only: [:index, :show]
  resources :events, only: [:show]
end
