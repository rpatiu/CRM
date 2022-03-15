Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  # get '/pages/:permalink' => "pages#permalink", as:'permalink'

  get '/customers/missing_email', to:'customers#missing_email'
  get '/customers/alphabetized' , to:'customers#alphabetized'
  resources :customers


  root "customers#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
