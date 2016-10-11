defmodule Desired.PlayerController do
  use Desired.Web, :controller

  alias Desired.Player

  def index(conn, _params) do
    players = Repo.all(Player)
    render conn, "index.json", players: players
  end
end
