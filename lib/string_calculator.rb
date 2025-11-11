class StringCalculator
  def add(input)
    validate_input(input)
    numbers = input.split(/[^0-9-]+/).map(&:to_i)
    numbers.sum
  end

  private

  def validate_input(input)
    raise 'Only accept string as an input' unless input.is_a? String
  end
end
