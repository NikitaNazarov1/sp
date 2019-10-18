# frozen_string_literal: true

# class Sort
class Sort
  attr_accessor :result

  def initialize(result)
    @result = result
  end

  def show
    puts result
    result.sort_by { |_k, v| v }.reverse!.each { |key, val| puts "#{key}: #{val}" }
  end
end
