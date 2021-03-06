# frozen_string_literal: true

require_relative 'app/parsing'

parsed_data = Parsing.new(ARGV.first)
parsed_data.parse_all
parsed_data.parse_uniq
