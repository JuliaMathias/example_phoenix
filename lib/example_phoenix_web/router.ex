defmodule ExamplePhoenixWeb.Router do
  use ExamplePhoenixWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ExamplePhoenixWeb do
    pipe_through :api

    get "/products/:products/emails/:emails", ChallengeController, :path_parameters
    get "/challenge_by_query", ChallengeController, :challenge_by_query
    get "/challenge_by_headers", ChallengeController, :challenge_by_headers

    post "/challenge_by_post", ChallengeController, :challenge_by_query
  end
end
