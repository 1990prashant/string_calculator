class StringCalculator
  def add(input)
    numbers = input.split(/[^0-9-]+/).map(&:to_i)
    numbers.sum
  end
end
