defmodule Library.Repo do
  use Ecto.Repo,
    otp_app: :library,
    adapter: Ecto.Adapters.Postgres
end
