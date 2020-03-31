# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :library,
  ecto_repos: [Library.Repo]

# Configures the endpoint
config :library, LibraryTransport.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "GMwDL/cPFzSbR7l+ykDzjra8Q3i0TvNEpEnGaM6fDW66lzLIOW0MCh87CNdLC5Zb",
  render_errors: [view: LibraryTransport.ErrorView, accepts: ~w(json)],
  pubsub: [name: Library.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "6Y+0NhE9"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
