Rails.application.routes.draw do
  get "log_in" => "sessions#new", :as => "log_in"

  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "users#new"
  
  resources :users do
    member do
      get :confirm_email
    end
  end
  
  resources :sessions

  
end
