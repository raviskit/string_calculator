require 'string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns the number itself if the string contains a single number' do
      expect(StringCalculator.add("5")).to eq(5)
    end

    it 'returns the sum of two numbers separated by a comma' do
      expect(StringCalculator.add("1,2")).to eq(3)
    end
  end
end
