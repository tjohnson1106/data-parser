defmodule ElhexDelivery.PostalCode.DataParser do
  @postal_codes_filepath "data/postal_national.txt"

  def parse_data do
    [_header | data_rows] = File.read!(@postal_codes_filepath) |> String.split("\n")

    data_rows
    |> Enum.map(fn row ->
      String.split(row, "\t")
    end)
    |> Enum.filter(fn row ->
      case row do
        [postal_code, _, _, _, _, latitude, longitude] -> true
        _ -> false
      end
    end)
    |> Enum.map(fn row ->
      []
    end)
  end
end
