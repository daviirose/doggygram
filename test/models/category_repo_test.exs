defmodule Doggygram.CategoryRepoTest do
  use Doggygram.ModelCase
  alias Doggygram.Category

  test "alphabetical/1 orders by name" do
    Repo.insert!(%Category{name: "c"})
    Repo.insert!(%Category{name: "a"})
    Repo.insert!(%Category{name: "b"})

    query = Category |> Category.alphabetical()
    query = from c in query, select: c.name
    assert Repo.all(query) == ~w(a b c)
  end
end
