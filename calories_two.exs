defmodule Calories do
  def count() do
    "inputs.txt"
    |> File.read!()
    |> String.trim
    |> String.split("\n\n")
    |> Enum.map(fn x ->
      String.split(x, "\n")
      |> Enum.map(&String.to_integer/1)
      |> Enum.reduce(&Kernel.+/2)
    end)
    |> Enum.sort
    |> Enum.take(-3)
    |> Enum.reduce(&Kernel.+/2)
    # |> IO.inspect()
  end
end

IO.inspect(Calories.count())
