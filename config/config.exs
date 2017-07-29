# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :uikit_demo,
  ecto_repos: [UikitDemo.Repo]

# Configures the endpoint
config :uikit_demo, UikitDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LyW4Fl4Ct9/ZXS42grQGZXdzyUBGW+7s2s9qAegt9n6AZ7aCWKGhIHktkJODc4oz",
  render_errors: [view: UikitDemoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: UikitDemo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
