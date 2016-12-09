defmodule ListOps do
  def count([]) do
    0
  end

  def count([_head | tail]) do
    1 + count(tail)
  end

  def reverse(list) do
    reverse(list, [])
  end

  defp reverse([], acumulator) do
    acumulator
  end

  defp reverse([head | tail], acumulator) do
    reverse(tail, [head | acumulator])
  end
end
