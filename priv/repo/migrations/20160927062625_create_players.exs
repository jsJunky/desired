defmodule Desired.Repo.Migrations.CreatePlayers do
  use Ecto.Migration

  def change do
    create table(:players) do
      add :email, :string
      add :username, :string

      timestamps
    end
  end
end
