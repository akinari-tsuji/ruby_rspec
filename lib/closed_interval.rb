# frozen_string_literal: true

class ClosedInterval
  def include?(number)
    return true if 3 <= number and number <= 7
    false
  end
end
