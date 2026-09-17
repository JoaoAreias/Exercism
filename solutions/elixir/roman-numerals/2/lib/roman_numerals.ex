defmodule RomanNumerals do
  @spec format(integer, integer, String.t(), String.t(), String.t()) :: String.t()
  defp format(number, base, ones, fives, tens) do
    number
    |> rem(10 * base)
    |> div(base)
    |> (fn n ->   
      cond do
        n == 0 -> ""
        n < 4 -> String.duplicate(ones, n)
        n == 4 -> ones <> fives
        n == 9 -> ones <> tens
        true -> fives <> String.duplicate(ones, n - 5)
      end
    end).()
  end


  @doc """
  Convert the number to a roman number.
  """
  @spec numeral(pos_integer) :: String.t()
  def numeral(number) do
      format(number, 1000, "M", " ", " ") <>
       format(number, 100, "C", "D", "M") <>
       format(number, 10, "X", "L", "C") <>
       format(number, 1, "I", "V", "X")
  end
end
