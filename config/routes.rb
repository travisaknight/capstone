Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/exercises" => "exercises#index"
    get "/exercises/:id" => "exercises#show"

    get "/workouts" => "workouts#index"
    post "/workouts" => "workouts#create"
    get "/workouts/:id" => "workouts#show"
    patch "/workouts/:id" => "workouts#update"
    delete "/workouts/:id" => "workouts#destroy"

    get "/completes" => "completes#index"
    post "/completes" => "completes#create"
    get "/completes/:id" => "completes#show"
    patch "/completes/:id" => "completes#update"
    delete "/completes/:id" => "completes#destroy"

    get "/completes_sum" => "completes_sum#rep_sum"
  end
end
