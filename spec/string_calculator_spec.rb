require './lib/string_calculator'

describe StringCalculator do

  subject(:calculator) { described_class.new }

  describe 'add' do
    context 'given an empty string' do
      it 'should return 0' do
        expect(calculator.add('')).to eq(0)
      end
    end

    context 'given input other than string type' do
      it 'should raise error' do
        expect { calculator.add(123) }.to raise_error('Only accept string as an input')
        expect { calculator.add(['123']) }.to raise_error('Only accept string as an input')
      end
    end
  end
end
