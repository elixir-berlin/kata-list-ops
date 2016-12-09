defmodule ListOps do
    def count(l), do: reduce(l, 0, fn(_, acc) -> acc + 1 end)

    def reverse(l), do: reduce(l, [], &([&1|&2]))

    def map(l, f), do: reduce(l, [], &([f.(&1)|&2])) |> reverse

    def filter(l, f), do: reduce(l, [], &(if f.(&1) do [&1|&2] else &2 end)) |> reverse

    def reduce([], acc, _), do: acc
    def reduce([h|t], acc, f), do: reduce(t, f.(h, acc), f)

    def append(l1, l2), do: concat([l1, l2])

    def concat(l), do: reduce(l, [], fn(i, acc) -> reduce(i, acc, &([&1|&2])) end) |> reverse
end
