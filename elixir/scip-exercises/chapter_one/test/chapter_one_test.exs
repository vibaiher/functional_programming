defmodule ChapterOneTest do
  use ExUnit.Case
  doctest ChapterOne

  test "Exercise 1.3" do
    assert ChapterOne.sumSquaresOfTwoBiggestNumbers(2, 3, 4) == 25
    assert ChapterOne.sumSquaresOfTwoBiggestNumbers(2, 4, 3) == 25
    assert ChapterOne.sumSquaresOfTwoBiggestNumbers(4, 3, 2) == 25
    assert ChapterOne.sumSquaresOfTwoBiggestNumbers(4, 2, 3) == 25
    assert ChapterOne.sumSquaresOfTwoBiggestNumbers(2, 2, 2) == 8
    assert ChapterOne.sumSquaresOfTwoBiggestNumbers(1, 2, 2) == 8
    assert ChapterOne.sumSquaresOfTwoBiggestNumbers(2, 1, 1) == 5
    assert ChapterOne.sumSquaresOfTwoBiggestNumbers(1, 1, 2) == 5
  end
end
