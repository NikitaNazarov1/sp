# frozen_string_literal: true

require_relative 'sort'
# class which give count of uniq views
class UniqViews
  attr_accessor :parse_arg

  def initialize(parse_data)
    @parse_arg = parse_data
  end

  def perform
    result = {}
    puts 'Uniq views:'
    parse_arg.each.map { |key, val| result[key] = "#{val.uniq.count} uniq views" }
    Sort.new(result).show
  end
end
