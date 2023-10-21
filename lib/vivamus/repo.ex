defmodule Vivamus.Repo do
  use Ecto.Repo,
    otp_app: :vivamus,
    adapter: Ecto.Adapters.Postgres
end
