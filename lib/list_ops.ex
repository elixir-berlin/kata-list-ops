defmodule ListOps do
    def count(l), do: count(l, 0)

    defp count([], acc), do: acc
    defp count([h|t], acc), do: count(t, acc+1)
end
