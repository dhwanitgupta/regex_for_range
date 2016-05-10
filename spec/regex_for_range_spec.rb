require 'spec_helper'

describe RegexForRange do

  context 'return all possible regex for given range of numbers' do
    it 'for range between 0 to 9' do
      expect(RegexForRange.get_regex_for_range(1, 2)).to eq('[1-2]')
    end

    it 'for range 1 to 100' do
      expect(RegexForRange.get_regex_for_range(1, 100)).to eq('[1-9]|[1-9][0-9]|100')
    end

    it 'for range 65666 to 65667' do
      expect(RegexForRange.get_regex_for_range(65666, 65667)).to eq('6566[6-7]')
    end
  end
end
