class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    numbers_array = if numbers.start_with?("//")
                      delimiter, numbers = numbers[2..].split("\n", 2)
                      numbers.split(delimiter)
                    else
                      numbers.split(/,|\n/)
                    end

    negatives = numbers_array.map(&:to_i).select(&:negative?)
    raise "Negatives not allowed: #{negatives.join(', ')}" if negatives.any?

    numbers_array.map(&:to_i).sum
  end
end
