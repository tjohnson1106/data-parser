defmodule ElhexDelivery.PostalCode.DataParserTest do
  use ExUnit.Case
  alias ElhexDelivery.PostalCode.DataParser
  doctest ElhexDelivery

  test "parse_data" do
    data_rows = DataParser.parse_data()
  end
end
