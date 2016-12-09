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

    def filter(l, f), do: filter(l, f, [])

    defp filter([], _, acc), do: reverse(acc)
    defp filter([h|t], f, acc) do
        if f.(h) do
            filter(t, f, [h|acc])
        else
            filter(t, f, acc)
        end
    end

    def reduce([], acc, _), do: acc
    def reduce([h|t], acc, f), do: reduce(t, f.(h, acc), f)

    def append(l1, l2), do: reduce(reverse(l1), l2, &([&1|&2]))

end
