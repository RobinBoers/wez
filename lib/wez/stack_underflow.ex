defmodule Wez.StackUnderflow do
  @moduledoc """
  Raised when attempting to `Wez.Stack.pop/1`
  from an empty stack.
  """
  defexception []
  def message(_), do: "stack is empty"
end
