defmodule Doggygram.UserRepoTest do
  use Doggygram.ModelCase
  alias Doggygram.User

  @valid_attrs %{name: "A User", username: "eva", password: "secret"}

  test "converts unique_constraint on username to error" do
    insert_user(username: "eric")
    attrs = Map.put(@valid_attrs, :username, "eric")
    changeset = User.changeset(%User{}, attrs)

    assert {:error, changeset} = Repo.insert(changeset)
    {message, _} = changeset.errors[:username]
    assert message == "has already been taken"
  end
end
