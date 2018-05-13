defmodule Doggygram.HelloController do
  use Doggygram.Web, :controller

  def world(conn, %{"name" => name}) do
    render conn, "world.html", name: name
  end
end
