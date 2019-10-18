# frozen_string_literal: true

require_relative 'sort'
# class which perform count of all views
class AllViews
  attr_accessor :parse_arg

  def initialize(parse_data)
    @parse_arg = parse_data
  end

  def perform
    result = {}
    puts 'All views:'
    parse_arg.each.map { |key, val| result[key] = "#{val.count} views" }
    Sort.new(result).show
  end
end
