defmodule KrandaWeb.UserView do
  use KrandaWeb, :view

  alias Kranda.Accounts

  def first_name(%Accounts.User{name: name}) do
    name
    |> String.split()
    |> Enum.at(0)
  end
end
