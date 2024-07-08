defmodule Wez.Op do
  @moduledoc """
  Operations that the Wez VM supports.
  """
  use TypedStruct

  typedstruct do
    field :type, type()
    field :first, operant()
    field :second, operant()
    field :third, operant()
  end

  @type type :: :halt
  @type operant :: number()
end
