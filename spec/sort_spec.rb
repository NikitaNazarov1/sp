# frozen_string_literal: true

require_relative '../app/log_parse'
require_relative '../app/sort'
# require 'spec_helper'

describe Sort do
  describe '#show' do
    let(:entry_result) do
      { '/help_page/1' => '2 uniq views', '/contact' => '3 uniq views', '/home' => '2 uniq views',
        '/about/2' => '4 uniq views', '/index' => '1 uniq views', '/about' => '5 uniq views' }
    end
    let(:expected_result) do
      [['/about', '5 uniq views'], ['/about/2', '4 uniq views'], ['/contact', '3 uniq views'],
       ['/home', '2 uniq views'], ['/help_page/1', '2 uniq views'], ['/index', '1 uniq views']]
    end

    it 'sort & show result' do
      expect(described_class.new(entry_result).show).to eq(expected_result)
    end
  end
end
