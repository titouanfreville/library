defmodule Domain.User do
  @moduledoc """
  User represent an user of the library.
  An user can login and manage items.
  """
  # TODO manage rights
  defstruct id, name, email, password, verified_email, created_at, last_updated_at, consent: false
end
