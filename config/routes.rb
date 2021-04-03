Rails.application.routes.draw do
  resources :users, except: [:new, :create] do
    resources(:todos)
  end

  resources(:todos) do
    resources :states
  end
  
  resources :states
  
  
  #get '/todos', to: "todos#index"
  #get '/todos/:id', to: "todos#show"

  resources :todos

  get '/signup', to: "users#new", as: "signup"
  post '/signup', to: "users#create"
  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create"
  post '/logout', to: "sessions#destroy"
 
  get "/auth/google_oauth2/callback", to: "sessions#create_with_google"
end
