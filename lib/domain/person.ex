defmodule Domain.Person do
  @moduledoc """
  Person represent any person involved in the creation or registration of an item.
  """
  defstruct id, name, first_name, last_name, born_at, dead_at, main_style false
end
