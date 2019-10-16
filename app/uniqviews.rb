# frozen_string_literal: true

# class which give count of uniq views
class UniqViews
  attr_accessor :parse_arg

  def initialize(parse_data)
    @parse_arg = parse_data
  end

  def perform
    puts 'Uniq views:'
    parse_arg.each.map { |key, val| parse_arg[key] = "#{val.uniq.count} uniq views" }
    parse_arg.sort_by { |_k, v| v }.reverse!.each { |key, val| puts "#{key}: #{val}" }
  end
end
