defmodule ListOps do
    def count(l), do: count(l, 0)

    defp count([], acc), do: acc
    defp count([_|t], acc), do: count(t, acc+1)

    def reverse(l), do: reverse(l, [])

    defp reverse([], acc), do: acc
    defp reverse([h|t], acc), do: reverse(t, [h] ++ acc)
end
