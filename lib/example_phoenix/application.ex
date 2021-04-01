defmodule ExamplePhoenix.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      ExamplePhoenixWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: ExamplePhoenix.PubSub},
      # Start the Endpoint (http/https)
      ExamplePhoenixWeb.Endpoint
      # Start a worker by calling: ExamplePhoenix.Worker.start_link(arg)
      # {ExamplePhoenix.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ExamplePhoenix.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    ExamplePhoenixWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
