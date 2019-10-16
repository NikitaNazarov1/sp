# frozen_string_literal: true

# require_relative 'logparse'
# require 'spec_helper'

describe LogParse do
  describe '#parsing' do
    let(:log) { 'example_log.log' }
    let(:expected_result) do
      { '/about/2:' => ['1213.243.45'], '/contact:' => ['12113.24123.45'],
        '/index:' => ['13.243.45', '13.242533.45'], '/about:' => ['123.2003.450'],
        '/help_page/1:' => ['1213.345.709'], '/home:' => ['124.567.22', '12.57.22', '12.57.22'] }
    end

    it 'parse input data' do
      expect(described_class.new(log).parsing).to eq(expected_result)
    end
  end
end
