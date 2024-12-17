# String Calculator

This project demonstrates a simple implementation of a String Calculator using **Test-Driven Development (TDD)** principles. The calculator takes a string input of numbers separated by delimiters and returns their sum, following specific rules for handling empty strings, custom delimiters, and invalid input.

---

## Features

- Handles an unknown number of comma-separated numbers.
- Supports newlines (`\n`) as delimiters.
- Custom delimiters can be defined using the `//[delimiter]\n[numbers]` format.
- Raises an exception for negative numbers, listing all negatives in the error message.
- Fully tested with RSpec.

---

## Prerequisites

Ensure you have the following installed:

1. **Ruby**: Version `3.1.3` (or compatible version).
2. **Bundler**: Install Bundler if not already installed:
   ```bash
   gem install bundler
   ```

---

## Installation

Follow these steps to set up and run the project:

1. **Clone the Repository**:

   ```bash
   git clone git@github.com:raviskit/string_calculator.git
   cd string_calculator
   ```

2. **Install Dependencies**:
   Install the required gems using Bundler:

   ```bash
   bundle install
   ```

3. **Run Tests**:
   Execute the RSpec test suite to verify the implementation:

   ```bash
   rspec
   ```

---

## Usage

The `StringCalculator` class provides a single class method `add` to compute the sum of numbers in a string:

```ruby
require './lib/string_calculator'

puts StringCalculator.add("1,2,3")        # Outputs: 6
puts StringCalculator.add("1\n2,3")      # Outputs: 6
puts StringCalculator.add("//;\n1;2;3")  # Outputs: 6
```

---

## Development Process

This project was developed using the **Red-Green-Refactor** cycle of TDD:

1. **Red**: Write a failing test.
2. **Green**: Write the minimal code to pass the test.
3. **Refactor**: Improve the code without changing its behavior.
4. **Commit**: Regular commits to track each TDD step.

---

## Implementation Details

### Rules Implemented

1. **Empty String**:

   - Input: `""`
   - Output: `0`

2. **Single Number**:

   - Input: `"5"`
   - Output: `5`

3. **Two Numbers**:

   - Input: `"1,2"`
   - Output: `3`

4. **Multiple Numbers**:

   - Input: `"1,2,3,4,5"`
   - Output: `15`

5. **Newline Delimiters**:

   - Input: `"1\n2,3"`
   - Output: `6`

6. **Custom Delimiters**:

   - Input: `"//;\n1;2;3"`
   - Output: `6`

7. **Negative Numbers**:

   - Input: `"1,-2,3,-4"`
   - Exception: `Negatives not allowed: -2, -4`

---

## Running the Tests

The tests are written using RSpec and can be executed as follows:

1. Navigate to the project directory:

   ```bash
   cd string_calculator
   ```

2. Run all tests:

   ```bash
   rspec
   ```

3. Run a specific test file:

   ```bash
   rspec spec/string_calculator_spec.rb
   ```

---

##

