defmodule ListOps do
  def count([]) do
    0
  end

  def count([head | tail]) do
    1 + count(tail)
  end

  def reverse(list) do
    reverse(list, [])
  end

  defp reverse([], reverse_list) do
    reverse_list
  end

  defp reverse([head | tail], reverse_list) do
    reverse(tail, [head | reverse_list])
  end
end
