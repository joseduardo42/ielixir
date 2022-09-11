defmodule ListFilter do
  def list_filter(lists) do
    string_int =
      Enum.flat_map(lists, fn list ->
        case Integer.parse(list) do
          {int, _rest} -> [int]
          :error -> []
        end
      end)

    odds_in_list =
      Enum.filter(string_int, fn el ->
        rem(el, 2) != 0
      end)

    Enum.count(odds_in_list)
  end
end
