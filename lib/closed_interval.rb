# frozen_string_literal: true

class ClosedInterval
  attr :lower_endpoint, :upper_endpoint

  def initialize(lower_endpoint, upper_endpoint)
    @lower_endpoint = lower_endpoint
    @upper_endpoint = upper_endpoint
  end

  def include?(number)
    return true if lower_endpoint <= number and number <= upper_endpoint
    false
  end
end
