# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :api_graphql,
  ecto_repos: [ApiGraphql.Repo]

# Configures the endpoint
config :api_graphql, ApiGraphqlWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "XhRA5/DklYvsz03SpfOOlHVEtUy/dGb13lpk/LYmn/K3gRcpojkXjS+NNzwnsXKF",
  render_errors: [view: ApiGraphqlWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ApiGraphql.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :api_graphql, Guardian,
  allowed_algos: ["HS512"], # optional
  verify_module: Guardian.JWT,  # optional
  issuer: "api_graphql",
  ttl: { 30, :days },
  verify_issuer: true, # optional
  secret_key: "Q/pRXuJQoZblGk4AIOHhMX0AkzuUpBS91hQVlO06PqrtRd/iAobc3CdBkMPDVYgc",
  serializer: ApiGraphqlWeb.GuardianSerializer

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
