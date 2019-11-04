Rails.application.routes.draw do
  resources :users
  resources :examples
  resources :datapoints
  resources :features
  resources :languages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: "test#test"
  post '/login', to: "auth#create"
end
