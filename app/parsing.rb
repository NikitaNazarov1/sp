# frozen_string_literal: true

require_relative 'allviews'
require_relative 'uniqviews'
require_relative 'logparse'

# class Parsing
class Parsing
  attr_reader :parse_arg

  def initialize(log)
    @parse_arg = LogParse.new(log).parsing
  end

  def parse_all
    AllViews.new(parse_arg).perform
  end

  def parse_uniq
    UniqViews.new(parse_arg).perform
  end
end
