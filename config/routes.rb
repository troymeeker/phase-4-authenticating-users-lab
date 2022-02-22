Rails.application.routes.draw do
  resources :articles, only: [:index, :show]

  # resources :users, only: [:show]
get "/me", to: "users#show"
  # resources :sessions, only: [:create, :destroy]
post "/login", to: "sessions#create"
delete "/logout", to: "sessions#destroy"
end
