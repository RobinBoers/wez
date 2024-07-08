defmodule WezTest do
  use ExUnit.Case

  alias Wez.Op

  test "halt" do
    assert Wez.evaluate([%Op{type: :halt}]) == []
  end
end
