require './lib/string_calculator'

describe StringCalculator do

  subject(:calculator) { described_class.new }

  describe 'add' do
    context 'given an empty string' do
      it 'should return 0' do
        expect(calculator.add('')).to eq(0)
      end
    end
  end
end
