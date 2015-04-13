Rails.application.routes.draw do
  root 'notes#index'

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout", sign_up: "signup"}

  resources :users
  resources :notes

end
