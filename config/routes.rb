Rails.application.routes.draw do
  resources :users
  resources :examples
  resources :datapoints
  resources :features
  resources :languages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: "test#test"
  get '/datapoints/for_feature/:id', to: "datapoints#for_feature"
  get '/datapoints/for_feature/:id/geojson', to: "datapoints#for_feature_geojson"
  get '/datapoints/for_language/:id', to: "datapoints#for_language"
  get '/features/:id/values', to: "features#values"
  get '/json', to: "test#json"
  get '/languages/:id/geojson', to: "languages#geojson"
  post '/login', to: "auth#create"
end
