defmodule ListOps do
    def count(l), do: count(l, 0)

    defp count([], acc), do: acc
    defp count([_|t], acc), do: count(t, acc+1)

    def reverse(l), do: reverse(l, [])

    defp reverse([], acc), do: acc
    defp reverse([h|t], acc), do: reverse(t, [h|acc])

    def map(l, f), do: map(l, f, [])

    defp map([], _, acc), do: reverse(acc)
    defp map([h|t], f, acc), do: map(t, f, [f.(h)|acc])
end
