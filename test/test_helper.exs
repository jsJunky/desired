Application.ensure_all_started(:hound)

defmodule Desired.Case do
  use ExUnit.CaseTemplate
  alias Ecto.Adapters.SQL
  alias Desired.Repo

  setup do
    SQL.begin_test_transaction(Repo)

    on_exit fn ->
      SQL.rollback_test_transaction(Repo)
    end
  end

  using do
    quote do
      alias Desired.Repo
      alias Desired.Player
      use Plug.Test

      def send_request(conn) do
        conn
        |> put_private(:plug_skip_csrf_protection, true)
        |> Desired.Endpoint.call([])
      end
    end
  end
end

ExUnit.start
