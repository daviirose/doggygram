  defmodule Doggygram.PageController do
    use Doggygram.Web, :controller

    def index(conn, _params) do
      render conn, "index.html"
    end
  end
