# frozen_string_literal: true

require_relative '../app/log_parse'
require_relative '../app/uniq_views'
# require 'spec_helper'

describe UniqViews do
  describe '#perform' do
    let(:log) { 'example_log.log' }
    let(:parse_arg) { LogParse.new(log).parsing }
    let(:expected_result) do
      [['/home:', '2 uniq views'], ['/index:', '2 uniq views'],
       ['/help_page/1:', '1 uniq views'], ['/about:', '1 uniq views'],
       ['/contact:', '1 uniq views'], ['/about/2:', '1 uniq views']]
    end

    it 'counts uniq views' do
      expect(described_class.new(parse_arg).perform).to eq(expected_result)
    end
  end
end
