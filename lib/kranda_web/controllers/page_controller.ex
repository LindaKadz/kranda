defmodule KrandaWeb.PageController do
  use KrandaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
