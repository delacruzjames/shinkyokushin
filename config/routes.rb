Shinkyokushin::Application.routes.draw do

  devise_for :users
  root :to => 'pages#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
