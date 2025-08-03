defmodule Analyzer do
  def count_evens(list) do
    evens = Enum.filter(list, &(rem(&1, 2) == 0))

    length(evens)
  end

  def sum_positive(list) do
    Enum.sum(Enum.filter(list, &(&1 >= 0)))
  end

  def unique_sorted(list) do
    Enum.sort(Enum.uniq(list))
  end
end

IO.inspect(Analyzer.count_evens([1, 2, 3, 4]))
IO.inspect(Analyzer.sum_positive([-1, 2, 3, -5]))
IO.inspect(Analyzer.unique_sorted([4, 1, 2, 1]))
