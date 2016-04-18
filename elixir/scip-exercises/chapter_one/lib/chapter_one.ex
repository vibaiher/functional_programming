defmodule ChapterOne do
  def sumSquaresOfTwoBiggestNumbers(first, second, third) do
    [one, two] = getTwoBiggestNumbersOf(first, second, third)

    square(one) + square(two)
  end

  def square(number) do
    number * number
  end

  def getTwoBiggestNumbersOf(first, second, third) when first >= second do
    [first, getBiggestNumbersOf(second, third)]
  end

  def getTwoBiggestNumbersOf(first, second, third) do
    [second, getBiggestNumbersOf(first, third)]
  end

  def getBiggestNumbersOf(first, second) when first > second do
    first
  end

  def getBiggestNumbersOf(first, second) do
    second
  end
end
