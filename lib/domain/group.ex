defmodule Domain.Group do
  @moduledoc """
  Group define a group of person acting as one.
  It can describe music band, orchestra, authors group, ...
  """
  defstruct id, name, created_at, separation_at, main_style false
end

defmodule Domain.GroupMember do
  @moduledoc """
  GroupMember define the association model between groups and user.

  They store the role of the person in a group as well as its entry date and end date.
  """
  defstruct person_id, group_id, role, start_date, end_date
end