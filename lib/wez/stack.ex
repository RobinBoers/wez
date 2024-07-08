defmodule Wez.Stack do
  @moduledoc """
  The stack on which Wez operates.
  """

  alias Wez.StackUnderflow

  @opaque t :: [value()]
  @type value :: any()

  defguard is_stack(stack)
           when is_list(stack)

  @spec new() :: t()
  def new, do: []

  @spec push(t(), value()) :: t()
  def push(stack, value) do
    [value | stack]
  end

  @spec pop(t()) :: {value(), t()}
  def pop([value | stack]) do
    {value, stack}
  end

  def pop(_) do
    raise StackUnderflow
  end
end
