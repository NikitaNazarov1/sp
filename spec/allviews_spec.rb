# frozen_string_literal: true

require_relative '../app/log_parse'
require_relative '../app/all_views'
# require 'spec_helper'

describe AllViews do
  describe '#perform' do
    let(:log) { 'example_log.log' }
    let(:parse_arg) { LogParse.new(log).parsing }
    let(:expected_result) do
      [['/home:', '3 views'], ['/index:', '2 views'], ['/help_page/1:', '1 views'],
       ['/about:', '1 views'], ['/contact:', '1 views'], ['/about/2:', '1 views']]
    end

    it 'counts all views' do
      expect(described_class.new(parse_arg).perform).to eq(expected_result)
    end
  end
end
