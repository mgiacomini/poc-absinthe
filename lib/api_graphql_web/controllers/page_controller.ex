defmodule ApiGraphqlWeb.PageController do
  use ApiGraphqlWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
