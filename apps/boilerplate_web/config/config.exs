# Since configuration is shared in umbrella projects, this file
# should only configure the :boilerplate_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :boilerplate_web,
  generators: [context_app: :boilerplate]

# Configures the endpoint
config :boilerplate_web, BoilerplateWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JCt0UW7iCeH9hKeXyVqeG5XIy5eE6SsZg/O/L+W8GugQPfKiLgcg7QHPDdTjXV8d",
  render_errors: [view: BoilerplateWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: BoilerplateWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
