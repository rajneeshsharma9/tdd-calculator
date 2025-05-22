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
  end
end
