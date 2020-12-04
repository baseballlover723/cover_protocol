defprotocol SlowProtocol do
  @fallback_to_any true

  @spec validate(map()) :: :ok | {:error, [binary()]}
  def validate(item)
end

defimpl SlowProtocol, for: Any do
  def validate(_), do: :ok
end
