defmodule DbappWeb.PageController do
  use DbappWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
