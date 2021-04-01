defmodule ExamplePhoenixWeb.Router do
  use ExamplePhoenixWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ExamplePhoenixWeb do
    pipe_through :api

    get "/products/:products/emails/:emails", ChallengeController, :path_parameters
  end
end
