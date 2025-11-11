class StringCalculator
  def add(input)
    validate_input(input)
    numbers = input.split(/[^0-9-]+/).map(&:to_i)
    validate_for_negative_numbers(numbers)
    numbers.sum
  end

  private

  def validate_for_negative_numbers(numbers)
    negative_numbers = numbers.select(&:negative?)
    raise "Negative numbers not allowed <#{negative_numbers.join(', ')}>" unless negative_numbers.empty?
  end

  def validate_input(input)
    raise 'Only accept string as an input' unless input.is_a? String
  end
end
