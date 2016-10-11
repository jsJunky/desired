defmodule Desired.PageController do
  use Desired.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
