# frozen_string_literal: true

require_relative 'app/parsing'

Parsing.new(ARGV.first).parse_all
Parsing.new(ARGV.first).parse_uniq
