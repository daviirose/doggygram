defmodule Doggygram.UserView do
  use Doggygram.Web, :view
  alias Doggygram.User

  def first_name(%User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
