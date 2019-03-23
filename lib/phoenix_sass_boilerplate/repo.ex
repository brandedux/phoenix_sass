defmodule PhoenixSassBoilerplate.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_sass_boilerplate,
    adapter: Ecto.Adapters.Postgres
end
