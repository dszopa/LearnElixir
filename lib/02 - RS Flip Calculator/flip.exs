defmodule FlipCalculator do
  def get_start_price do
    IO.gets("What is the start price of the item you will be merching? ")
    |> String.replace("\r", "")
    |> String.replace("\n", "")
    |> String.to_integer
  end

  def get_end_price do
    IO.gets("What is the end price of the item you will be merching? ")
    |> String.replace("\r", "")
    |> String.replace("\n", "")
    |> String.to_integer
  end

  def get_item_amount do
    IO.gets("How many of the item will you be merching? ")
    |> String.replace("\r", "")
    |> String.replace("\n", "")
    |> String.to_integer
  end

  def calculate_profit(startPrice, endPrice, itemCount) do
    (endPrice * itemCount) - (startPrice * itemCount)
  end
end

startPrice = FlipCalculator.get_start_price()
endPrice = FlipCalculator.get_end_price()
itemCount = FlipCalculator.get_item_amount()
profit = FlipCalculator.calculate_profit(startPrice, endPrice, itemCount)

IO.puts("Your profit will be: #{profit}")
