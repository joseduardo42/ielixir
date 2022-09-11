defmodule ListLength do
  def call(list), do: count(list, 0)

  def count([], count) do
    count
  end

  def count([_head | tail], count) do
    count = count + 1
    count(tail, count)
  end
end
