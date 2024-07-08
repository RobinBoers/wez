defmodule Wez do
  @moduledoc """
  Stack-based virtual machine.
  """

  alias Wez.Stack
  alias Wez.Op

  @doc false
  @spec main() :: Stack.t()
  def main do
    evaluate([
      %Op{type: :halt}
    ])
  end

  @spec evaluate([Op.t()]) :: Stack.t()
  def evaluate(operations) do
    evaluate(operations, Stack.new())
  end

  defp evaluate([], stack), do: stack

  defp evaluate([op | rest], stack) do
    case eval_op(op, stack) do
      {:cont, stack} -> evaluate(rest, stack)
      {:halt, stack} -> stack
    end
  end

  defp eval_op(%Op{type: :halt}, stack) do
    {:halt, stack}
  end
end
