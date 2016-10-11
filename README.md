# Desired

To start your Phoenix app:

  1. Install dependencies with `mix deps.get`
  2. Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Configs

Configs are excluded but you can use the below template to build your own at `/config` directory.

```exs
use Mix.Config

# Configures the endpoint
config :desired, Desired.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "secret_key_base",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: Desired.PubSub,
           adapter: Phoenix.PubSub.PG2]


# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Ecto managed repos
config :desired, ecto_repos: [Desired.Repo]

config :desired, Desired.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "database",
  username: "username",
  password: "password",
  host: "localhost",
  port: "6543"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

```