# frozen_string_literal: true

# require_relative 'logparse'
# require_relative 'allviews'
# require 'spec_helper'

describe AllViews do
  describe '#perform' do
    let(:log) { 'example_log.log' }
    let(:parse_arg) { LogParse.new(log).parsing }
    let(:expected_result) { 'some_result' }

    it 'counts all views' do
      expect(described_class.new(parse_arg).perform).to eq(expected_result)
    end
  end
end
