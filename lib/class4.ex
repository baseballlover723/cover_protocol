defmodule Class4 do
  use TypedStruct

  typedstruct do
    @typedoc "Class 1"

    field(:name, String.t(), enforce: true)
    field(:age, non_neg_integer())
    field(:happy?, boolean(), default: true)
    field(:phone, String.t())
  end

  defimpl FastProtocol, for: Class4 do
    def validate(%Class4{}), do: :ok
  end
end
