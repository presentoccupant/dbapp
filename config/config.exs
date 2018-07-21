# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :dbapp,
  ecto_repos: [Dbapp.Repo]

# Configures the endpoint
config :dbapp, DbappWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DY5DgOdexsbLrR5pCPg2/684Smkwxbk7NPbbZ/2snyamLPEnVzPsFN6l4+Ur5pRO",
  render_errors: [view: DbappWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Dbapp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
