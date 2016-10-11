defmodule Desired.Player do
  use Desired.Web, :model

  schema "players" do
    field :email, :string
    field :username, :string

    timestamps
  end

  @required_fields ~w(email username)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
