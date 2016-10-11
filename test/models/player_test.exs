defmodule Desired.PlayerViewTest do
  use Desired.ConnCase
  alias Desired.PlayerView

  test "players_json" do
    player = insert(:player)

    rendered_player = PlayerView.player_json(player)

    assert rendered_player == %{
      email: player.email,
      username: player.username,
      inserted_at: player.inserted_at,
      updated_at: player.updated_at
    }
  end

  test "index.json" do
    player = insert(:player)

    rendered_players = PlayerView.render("index.json", %{players: [player]})

    assert rendered_players == %{
      todos: [PlayerView.player_json(todo)]
    }
  end
end