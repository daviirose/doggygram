defmodule Doggygram.WatchController do
  use Doggygram.Web, :controller
  alias Doggygram.Video

  def show(conn, %{"id" => id}) do
    video = Repo.get!(Video, id)
    render conn, "show.html", video: video
  end
end
