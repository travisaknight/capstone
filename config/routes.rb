Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/exercises" => "exercises#index"

    post "/workouts" => "workouts#create"

    get "/workouts" => "workouts#index"
    patch "/workouts/:id" => "workouts#update"
    delete "/workouts/:id" => "workouts#destroy"
  end
end
