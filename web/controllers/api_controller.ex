defmodule Desired.ApiController do
    use Desired.Web, :controller

    def index(conn, %{"id" => id}) do
        json conn, %{id: id}
    end
end