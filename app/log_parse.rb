# frozen_string_literal: true

# push parsed data to parse_arg
class LogParse
  attr_reader :log
  attr_accessor :parse_arg

  def initialize(log)
    @log = log
    @parse_arg = Hash.new { |hash, key| hash[key] = [] }
  end

  def parsing
    file = IO.readlines(log)
    file.each do |line|
      path, ip = line.split
      parse_arg[path] << ip
    end
    parse_arg
  end
end
