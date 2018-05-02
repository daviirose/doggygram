defmodule Doggygram.UserController do
  use Doggygram.Web, :controller

  def index(conn, _params) do
    users = Repo.all(Doggygram.User)
    render conn, "index.html", users: users
  end

  def show(conn, %{"id" => id}) do
    user = Repo.get(Doggygram.User, id)
    render conn, "show.html", user: user
  end

  alias Doggygram.User

  def new(conn, _params) do
    changeset = User.changeset(%User{})
    render conn, "new.html", changeset: changeset
  end
end
