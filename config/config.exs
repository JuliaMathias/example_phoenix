# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :example_phoenix, ExamplePhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VWdqoh2JXpTN9pB0ASu1AX68KoXnvU7t/sxhF/xFQQTuIaSPavTiUIy5kzRC/ZKM",
  render_errors: [view: ExamplePhoenixWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: ExamplePhoenix.PubSub,
  live_view: [signing_salt: "BC8/9Knp"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
