Rails.application.routes.draw do
  resources :news
  devise_for :users, controllers: { registrations: 'users/registrations'}
  root 'news#index'
  get 'persons/profile'
  get 'persons/send_email'
  patch 'persons/update'

  get 'persons/profile', as: 'user_root'
end
