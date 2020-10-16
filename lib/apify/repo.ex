defmodule Apify.Repo do
  use Ecto.Repo,
    otp_app: :apify,
    adapter: Ecto.Adapters.Postgres
end
