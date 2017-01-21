Rails.application.routes.draw do
  resources :role_users
  resources :roles
  get 'welcome/index', as: :index 
  get 'welcome/insufficient_privileges', as: :ip

  resources :executors
  resources :requests
  resources :payments
  resources :workers
  resources :inventaries
  resources :room_buildings
  resources :rooms
  resources :beddings
  resources :employees
  resources :posts
  resources :buildings
  resources :students
  resources :visitors
  resources :guests
  resources :people
  root :to => 'welcome#index'
  resources :user_sessions
  resources :users do
    member do
      get :activate
    end
  end

  get 'login' => 'user_sessions#new', :as => :login
  get 'logout' => 'user_sessions#destroy', :as => :logout

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
