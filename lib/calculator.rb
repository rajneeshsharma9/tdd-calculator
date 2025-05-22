# frozen_string_literal: true

class Calculator
  def add(numbers_string)
    return 0 if numbers_string == ''

    match = numbers_string.match(%r{//(.)})
    delimiter = match ? match[1] : ','
    return numbers_string.to_i if !numbers_string.include?(delimiter) && numbers_string.to_i.is_a?(Integer)

    numbers_array = numbers_string
      .split('\n')
      .map {|numbers| numbers.split(delimiter)}
      .flatten
      .map(&:to_i)
      .reject {|number| number >= 1000}

    raise ArgumentError, "negative numbers not allowed #{numbers_array.select(&:negative?).join(',')}" if numbers_array.any?(&:negative?)

    return numbers_array.sum
  end
end
