defmodule SumListTest do
  use ExUnit.Case

  describe "call/1" do
    test "return list sum" do
      list = [1, 2, 3, 4, 5]

      res = SumList.call(list)

      assert res == 15
    end
  end
end
