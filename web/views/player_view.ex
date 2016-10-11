defmodule Desired.PlayerView do
  use Desired.Web, :view

  def render("index.json", %{players: players}) do
    %{
      players: Enum.map(players, &player_json/1)
    }
  end

  def player_json(player) do
    %{
      email: player.email,
      username: player.username,
      inserted_at: player.inserted_at,
      updated_at: player.updated_at
    }
  end
end
