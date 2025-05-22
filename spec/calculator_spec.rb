# frozen_string_literal: true

# spec/calculator_spec.rb
require 'spec_helper'
require_relative '../lib/calculator'

RSpec.describe Calculator do
  describe '#add' do
    let(:calculator) { Calculator.new }

    context 'when numbers are empty' do
      it 'returns 0' do
        expect(calculator.add('')).to eq(0)
      end
    end

    context 'when only one number is passed' do
      it 'returns the same number' do
        expect(calculator.add('1')).to eq(1)
      end
    end

    context 'when two numbers are passed' do
      it 'returns the sum of the numbers' do
        expect(calculator.add('1,2')).to eq(3)
      end
    end

    context 'when more than 2 numbers are passed' do
      it 'returns the sum of the numbers' do
        expect(calculator.add('1,2,3,4,5')).to eq(15)
      end
    end

    context 'when new lines are present between numbers' do
      it 'returns the sum of the numbers' do
        expect(calculator.add('1,2\n3')).to eq(6)
      end
    end

    context 'when delimiter is a speacial character' do
      it 'returns the sum of the numbers' do
        expect(calculator.add('//;\n1;2')).to eq(3)
      end
    end

    context 'when a negative number is passed' do
      it 'raises an exception displaying the negative number' do
        expect {
          expect(calculator.add('1,-2'))
        }.to raise_error(ArgumentError, 'negative numbers not allowed -2')
      end
    end

    context 'when multiple negative numbers are passed' do
      it 'raises an exception displaying the comma separated negative number' do
        expect {
          expect(calculator.add('1,-2,-3'))
        }.to raise_error(ArgumentError, 'negative numbers not allowed -2,-3')
      end
    end

    # Extra points
    context 'when a number greater than 1000 is passed' do
      it 'ignores the number more than 1000 from sum' do
        expect(calculator.add('1,1000')).to eq(1)
      end
    end
  end
end
