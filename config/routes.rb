Rails.application.routes.draw do
	resources :news
	devise_for :users, controllers: { registrations: 'users/registrations'}
	root 'news#index'
	get 'persons/profile'
	get 'persons/send_email'
	get 'persons/admin_page' 
	patch 'persons/update'
	patch 'persons/make_admin'
	mount Commontator::Engine => '/commontator'
	get 'persons/profile', as: 'user_root'
end
