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

  def reverse([], acumulator) do
    acumulator
  end

  def reverse([head | tail], acumulator) do
    reverse(tail, [head | acumulator])
  end
end
