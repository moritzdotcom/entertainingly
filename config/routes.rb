Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'users/registrations' }
  get '/about', to: 'pages#about_us', as: :about
  get '/impressum', to: 'pages#impressum', as: :impressum
  get '/privacy', to: 'pages#privacy', as: :privacy
  get '/terms_of_use', to: 'pages#terms_of_use', as: :terms_of_use
  get '/privacy/facebook', to: 'pages#facebook_privacy', as: :facebook_privacy
  get '/admin/dashboard', to: 'pages#admin_dashboard', as: :admin_dashboard
  get '/users', to: 'pages#users', as: :users

  resources :categories
  resources :events, except: :index do
    resources :user_favourites, only: [:create, :destroy]
  end
end
