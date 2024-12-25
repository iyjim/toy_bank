defmodule ToyBankTest do
  use ExUnit.Case
  doctest ToyBank

  test "greets the world" do
    assert ToyBank.hello() == :world
  end
end
