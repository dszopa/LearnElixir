defmodule UnitConverter do
    def get_unit do
        IO.gets "What is the name of the unit you would like to convert? "
        |> String.trim
        |> String.trim_trailing("\n")
    end
end

unit1 = UnitConverter.get_unit
unit2 = UnitConverter.get_unit

IO.puts Enum.join([unit1, unit2], " ")
