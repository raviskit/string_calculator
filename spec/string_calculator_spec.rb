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

    it 'returns the sum of an unknown amount of numbers' do
      expect(StringCalculator.add("1,2,3,4,5")).to eq(15)
    end

    it 'handles newlines as delimiters' do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it 'handles custom delimiters' do
      expect(StringCalculator.add("//;\n1;2;3")).to eq(6)
    end
  end
end
