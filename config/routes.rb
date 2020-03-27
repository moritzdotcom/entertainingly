Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get '/about', to: 'pages#about_us', as: :about
  get '/impressum', to: 'pages#impressum', as: :impressum
  get '/privacy', to: 'pages#privacy', as: :privacy
  get '/terms_of_use', to: 'pages#terms_of_use', as: :terms_of_use
  get '/privacy/facebook', to: 'pages#facebook_privacy', as: :facebook_privacy
  get '/admin/dashboard', to: 'pages#admin_dashboard', as: :admin_dashboard

  resources :categories
  resources :events, except: :index
end
