defmodule ProtocolSharedTests do
  defmacro __using__(options) do
    quote do
      use ExUnit.Case
      @iter 1_000_000
      @types [int: 0, map: %{}, string: ""]

      @moduletag unquote(options)
      [protocol: protocol] = unquote(options)

      test protocol, %{protocol: protocol} do
        for _ <- 0..@iter, {_name, value} <- @types do
          assert protocol.validate(value) == :ok
        end
      end
    end
  end
end
