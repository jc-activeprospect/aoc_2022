defmodule Calories do
  def count() do
    "inputs.txt"
    |> File.read!()
    # |>IO.inspect()
    |> String.trim
    # |> IO.inspect()
    |> String.split("\n")
    # |>IO.inspect()
    |> Enum.chunk_by(fn x -> (x == "") end)
    # |>IO.inspect()
    |> Enum.reject(fn x -> x == [""] end)
    # |>IO.inspect()


    # |> Enum.map(&String.to_integer/1)
    # error
    # * 1st argument: not a binary
    # :erlang.binary_to_integer(["2027", "1630", "4699", "3860", "5686", "1178", "4983", "1075", "5436", "2522", "4455", "4808", "3644", "2344", "1671"])

    |> Enum.map(fn x ->
      Enum.map(x, &String.to_integer/1)
    end)

    |>IO.inspect()
    |> Enum.map(&Enum.sum/1)
    # |>IO.inspect()
    |> Enum.sort(:asc)
    # |>IO.inspect()
    |> List.last()
    # |>IO.inspect()
  end
end

IO.inspect(Calories.count())
