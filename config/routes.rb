Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

  devise_for :users
  #get "log_in" => "sessions#new", :as => "log_in"
  #get "log_out" => "sessions#destroy", :as => "log_out"

  #get "sign_up" => "users#new", :as => "sign_up"
  root :to => 'welcome#index'
  
  #resources :users do
    #member do
      #get :confirm_email
    #end
  #end
  
  #resources :users
   # devise_scope :user do 
   # root to: 'welcome#index'
   #  get "sign_in", to: "devise/sessions#new"
   #  get "sign_out", to: "devise/sessions#destroy"
    #match '/sessions/user', to: 'devise/sessions#create', via: :post
  #end
  #resources :sessions

  
end
