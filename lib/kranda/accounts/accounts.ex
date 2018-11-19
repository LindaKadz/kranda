defmodule Kranda.Accounts do
  @moduledoc """
  Accounts context
  """
  alias Kranda.Accounts.User

  def list_users do
    [
      %User{id: "1", name: "linda", username: "lindakadz"},
      %User{id: "2", name: "krafty", username: "kraftykoder"},
      %User{id: "3", name: "getty", username: "lindakadz"}
    ]
  end

  def get_user(id) do
    Enum.find(list_users(), fn map -> map.id == id end)
  end

  def get_user_by(params) do
    Enum.find(list_users(), fn map -> Enum.all?(params, fn
      {key, value} -> Map.get(map, key) == value end) end)
  end
end
