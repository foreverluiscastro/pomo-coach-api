Rails.application.routes.draw do
  # resources :pomo_sessions
  # resources :sessions
  # resources :users
  resources :pomo_sessions
  post "/signup", to: "users#create"
  delete "/delete_account", to: "users#destroy"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
