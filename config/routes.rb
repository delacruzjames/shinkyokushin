Shinkyokushin::Application.routes.draw do

  get "users/index"

  resources :dojos, :only => [:show, :index]
  resources :instructors, :only => [:show, :index]
  resources :users, :only => [:show, :index]
  devise_for :users do
  	match '/registration', :to => "devise/registrations#new"
  	match '/login', :to => "devise/sessions#new"
  end
  root :to => 'pages#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
