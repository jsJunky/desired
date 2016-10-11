defmodule Desired.PlayerTest do
  use Desired.ConnCase
  alias Desired.Player

  @valid_attrs %{email: "email@example.com", username: "username"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Player.changeset(%Player{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Player.changeset(%Player{}, @invalid_attrs)
    refute changeset.valid?
  end
end