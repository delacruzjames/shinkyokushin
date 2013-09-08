Shinkyokushin::Application.routes.draw do

  get "members/index"

  resources :dojos, :only => [:show, :index]
  resources :instructors, :only => [:show, :index]
  resources :members, :only => [:show, :index]
  devise_for :users do
  end 
  root :to => 'pages#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
