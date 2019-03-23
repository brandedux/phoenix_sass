defmodule PhoenixSassBoilerplateWeb.PageController do
  use PhoenixSassBoilerplateWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
