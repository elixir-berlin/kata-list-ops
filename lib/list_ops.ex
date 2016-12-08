defmodule ListOps do
  def count([]) do
    0
  end

  def count([head | tail]) do
    1 + count(tail)
  end

  def map([], _) do
    []
  end

  def map(list, block) do
    map(list, [], block)
  end

  defp map([], mapped_list, _) do
    reverse(mapped_list)
  end

  defp map([head | tail], mapped_list, block) do
    map(tail, [block.(head) | mapped_list], block)
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
