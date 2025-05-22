# frozen_string_literal: true

class Calculator
  def add(numbers_string)
    return 0 if numbers_string == ''

    delimiter = ','
    return numbers_string.to_i if !numbers_string.include?(delimiter) && numbers_string.to_i.is_a?(Integer)

    return numbers_string.split(delimiter).map(&:to_i).sum
  end
end
