# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :apify,
  ecto_repos: [Apify.Repo]

# Configures the endpoint
config :apify, ApifyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qxtX+Pni9ZuacZcpWlzeW6iPtN9zi6+II3WiKmGdyMHha/QmUGR/aogU6EbKxmxT",
  render_errors: [view: ApifyWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Apify.PubSub,
  live_view: [signing_salt: "XRzalb7P"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

# Guardian config
config :apify, Apify.Guardian,
  issuer: "apify",
  secret_key: "t4B65ggw77I4HrmC2GwSUrhBZ85NLaq8g/yU1Rc51tK8fXLrjLnvdprr3e3aEYpK"
