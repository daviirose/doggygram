  defmodule Doggygram.Video do
    use Doggygram.Web, :model

    schema "videos" do
      field :url, :string
      field :title, :string
      field :description, :string
      belongs_to :user, Doggygram.User
      belongs_to :category, Doggygram.Category

      timestamps()
    end

    @doc """
    Builds a changeset based on the `struct` and `params`.
    """

    def changeset(model, params \\ %{}) do
      model
      |> cast(params, [:url, :title, :description, :category_id])
      |> assoc_constraint(:category)
    end
  end
