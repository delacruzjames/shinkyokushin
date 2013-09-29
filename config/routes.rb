Shinkyokushin::Application.routes.draw do

  root :to => 'pages#index'

  match "/dashboard", :to => "pages#instructor_dashboard"

  resources :dojos, except: [:edit, :update, :destroy]
  resources :instructors, :only => [:show, :index]
  resources :members, :only => [:show, :index]

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)
end
