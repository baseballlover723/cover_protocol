defmodule CoverProtocolTest do
  use ExUnit.Case
  doctest CoverProtocol

  test "greets the world" do
    assert CoverProtocol.hello() == :world
  end
end
