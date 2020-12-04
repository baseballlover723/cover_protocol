defmodule ProtocolSharedTests do
  defmacro __using__(options) do
    quote do
      use ExUnit.Case
      @iter 1_000_000
      @class_params [name: "name", age: 4, phone: "123"]
#      @types [int: 0, map: %{}, string: "", class1: struct(Class1, @class_params)]
      @types [int: 0, map: %{}, string: "", class1: struct(Class1, @class_params), class2: struct(Class2, @class_params), class3: struct(Class3, @class_params), class4: struct(Class4, @class_params), class5: struct(Class5, @class_params), class6: struct(Class6, @class_params)]

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
