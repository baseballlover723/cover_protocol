defprotocol FastProtocol do
  @spec validate(map()) :: :ok | {:error, [binary()]}
  def validate(item)
end

defimpl FastProtocol, for: Integer do
  def validate(_), do: :ok
end

defimpl FastProtocol, for: Map do
  def validate(_), do: :ok
end

defimpl FastProtocol, for: BitString do
  def validate(_), do: :ok
end
