# 🧮 String TDD Calculator

A simple calculator that parses and sums numbers from a string. It supports default and custom delimiters, ignores empty values, and is safely tested with RSpec.

---

## 📁 Project Structure

```
tdd-calculator/
├── lib/
│   └── calculator.rb
├── spec/
│   └── calculator_spec.rb
├── .rspec
├── Gemfile
└── README.md
```

---

## ⚙️ Features

- Add numbers provided in a single string
- Default delimiters: comma (`,`) and newline (`\n`)
- Supports custom delimiter syntax (e.g., `//;\n1;2`)
- Graceful handling of invalid or empty input
- Includes unit tests using RSpec

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/rajneeshsharma9/tdd-calculator.git
cd tdd-calculator
```

### 2. Install Dependencies

Ensure Ruby (≥ 2.7) and Bundler are installed:

```bash
bundle install
```

> If Bundler is not installed:
>
> ```bash
> gem install bundler
> ```

---

## 🧪 Running Tests

Run all RSpec tests:

```bash
bundle exec rspec
```

Or run a specific test file:

```bash
bundle exec rspec spec/calculator_spec.rb
```

---

## 🔍 Usage Example

```ruby
require_relative 'lib/calculator'

calc = Calculator.new
puts calc.add("1,2,3")            # => 6
puts calc.add("//;\n1;2")         # => 3
puts calc.add("")                 # => 0
puts calc.add("100\n200,3")       # => 303
```

---

## 🛠️ Development

You can add new features or extend support for subtraction, multiplication, etc. Contributions are welcome!

---

## 📄 License

MIT License © 2025 Rajneesh Sharma
