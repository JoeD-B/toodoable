Rails.application.routes.draw do
  resources :users, except: [:new, :create] do
    resources(:todos)
  end
  
  resources :states
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #get '/todos', to: "todos#index"
  #get '/todos/:id', to: "todos#show"

  resources :todos

  get '/signup', to: "users#new", as: "signup"
  post '/signup', to: "users#create"
  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create"
  post '/logout', to: "sessions#destroy"
end
