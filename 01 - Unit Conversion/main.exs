  defmodule UnitConverter do

    @acceptedValues ["oz", "cups", "pints"]
    @map %{
      "ozTOcups" => (1/8),
      "ozTOpints" => (1/16),
      "cupsTOoz" => 8.0,
      "pintsTOoz" => 16.0,
      "pintsTOcups" => 2.0,
      "cupsTOpints" => (1/2),
      # TODO - dszopa 12/26/16 - finish this table, also add the option to choose calc vs convert
    }

    def print_accepted_values do
      IO.puts("The accepted value types are: " <> Enum.join(@acceptedValues, ", "))
    end

    def get_unit do
      IO.gets("What is the name of the unit you would like to convert? ")
      # |> String.replace("\r", "")
      # |> String.replace("\r", "")
      |> String.trim
    end

    def get_amount do
      IO.gets("How much of unit 1 do you have? ")
      # |> String.replace("\r", "")
      # |> String.replace("\n", "")
      # TODO - dszopa 12/26/16 - apparently trim does ^
      |> String.trim
      |> String.to_integer
    end

    def get_conversion(unit1, unit2, amount) do
      elem(Map.fetch(@map, (unit1 <> "TO" <> unit2)), 1) * amount
    end
end

UnitConverter.print_accepted_values

unit1 = UnitConverter.get_unit
amount = UnitConverter.get_amount
unit2 = UnitConverter.get_unit

IO.puts(UnitConverter.get_conversion(unit1, unit2, amount))
