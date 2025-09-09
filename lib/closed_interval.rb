# frozen_string_literal: true

class ClosedInterval
  attr :lower_endpoint, :upper_endpoint

  def initialize(lower_endpoint, upper_endpoint)
    if lower_endpoint > upper_endpoint
      raise StandardError("下端点は上端点より小さい必要があります")
    end
    @lower_endpoint = lower_endpoint
    @upper_endpoint = upper_endpoint
  end

  def include?(number)
    return true if @lower_endpoint <= number and number <= @upper_endpoint
    false
  end

  def to_s
    "[#{@lower_endpoint},#{@upper_endpoint}]"
  end
end
