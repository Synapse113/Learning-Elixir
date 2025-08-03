defmodule Day1 do
  # part 1
  def main() do
    input = String.trim_trailing(File.read!("./day1.txt"))

    split_input = String.split(input, "\n")

    {row1, row2} =
      Enum.reduce(
        split_input,
        {[], []},
        fn i, {acc1, acc2} ->
          split = String.split(i, " ")
          first = hd(split)
          last = List.last(split)

          {[String.to_integer(first) | acc1], [String.to_integer(last) | acc2]}
        end
      )

    sorted_row1 = Enum.sort(row1)
    sorted_row2 = Enum.sort(row2)

    distances =
      Enum.zip(sorted_row1, sorted_row2)
      |> Enum.map(fn {a, b} ->
        abs(a - b)
      end)
      |> Enum.sum()

    IO.inspect(distances)
  end
end

Day1.main()
