defmodule FizzBuzz do
  def run(num) do
    cond do
      rem(num, 3) == 0 and rem(num, 5) == 0 -> "FizzBuzz"
      rem(num, 3) == 0 -> "Fizz"
      rem(num, 5) == 0 -> "Buzz"
      true -> num
    end
  end
end

IO.puts(FizzBuzz.run(9))
