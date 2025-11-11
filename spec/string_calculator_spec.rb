require './lib/string_calculator'

describe StringCalculator do
  describe 'add' do
    context 'given an empty string' do
      it 'should return 0' do
        expect(calculator.add('')).to eq(0)
      end
    end
  end
end
