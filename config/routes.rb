Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/stores" => "stores#create"

    post "/sessions" => "sessions#create" # stores to sign in

    post "/customers" => "customers#create"
    patch "/customers" => "customers#update"
  end
end
