defmodule ElhexDelivery.PostalCode.DataParser do
@postal_codes_filepath "data/postal_national.txt"

def parse_data do
  [header | data_rows] = File.read!(@postal_codes_filepath) |> String.split("\n")

  data_rows
end

end
