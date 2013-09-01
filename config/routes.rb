Shinkyokushin::Application.routes.draw do

  resources :dojos, :only => [:show]
  resources :instructors, :only => [:show]
  devise_for :users do
  	match '/registration', :to => "devise/registrations#new"
  end
  root :to => 'pages#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
