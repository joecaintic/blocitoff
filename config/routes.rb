Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

  devise_for :users
  resources :users, only: [:update, :show, :index]

  #root :to => 'welcome#index'
  
  authenticated :user do
    #root :to => 'welcome#index'
    root :to => 'users#show'
  end

  unauthenticated :user do
    devise_scope :user do
      get "/" => "devise/sessions#new"
    end
  end
  
end
