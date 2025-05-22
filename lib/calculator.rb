# frozen_string_literal: true

class Calculator
  def add(numbers_string)
    return 0 if numbers_string == ''

    return numbers_string.to_i if numbers_string.to_i.is_a? Integer
  end
end
