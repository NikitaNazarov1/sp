# frozen_string_literal: true

require_relative 'all_views'
require_relative 'uniq_views'
require_relative 'log_parse'

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
