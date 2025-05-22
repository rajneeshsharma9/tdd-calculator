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
  end
end
