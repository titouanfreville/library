defmodule Domain.Item do
  @moduledoc """
  Person represent any person involved in the creation or registration of an item.
  """
  defstruct id, name, first_publication_date
end

defmodule Domain.Item.Authors do
  defstruct person_id, item_id, role
end

defmodule Domain.Item.Performer do
  defstruct person_id, item_id, role, performed_at
end