Shinkyokushin::Application.routes.draw do

  resources :dojos, :only => [:show, :index]
  resources :instructors, :only => [:show, :index]
  # resources :users, :only => [:show, :index]
  devise_for :users 
  root :to => 'pages#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
