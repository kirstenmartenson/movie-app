Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    # get "/actor" => "actors#actor_method"
    
    # get "/movies" => "movies#movies_method"

    # get "/avator" => "movies#avator"

    # get "/titanic" => "movies#titanic"

    # get "/star_wars_awaken" => "movies#star_wars_awaken"

    # get "/avengers_infinity_war" => "movies#avengers_infinity_war"

    get "/movies" => "movies#index"

    post "/movies" => "movies#create"

    get "/movies/:id" => "movies#show"

    patch "/movies/:id" => "movies#update"

    delete "/movies/:id" => "movies#destroy"

    get "/actors" => "actors#index"

    post "/actors" => "actors#create"

    get "/actors/:id" => "actors#show"

    patch "/actors/:id" => "actors#update"

    delete "/actors/:id" => "actors#destroy"
  end

end
