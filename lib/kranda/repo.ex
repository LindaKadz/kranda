defmodule Kranda.Repo do
  use Ecto.Repo,
    otp_app: :kranda,
    adapter: Ecto.Adapters.Postgres
end
