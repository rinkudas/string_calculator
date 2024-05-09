require 'string_calculator'
RSpec.describe StringCalculator do
  let(:string_calculator) { StringCalculator.new }

  it 'creates a string_calculator class' do
    expect(string_calculator).to be_kind_of(StringCalculator)
  end

  it 'has a add method' do
    expect(string_calculator).to respond_to(:add)
  end

  describe 'add' do
    context 'when input is empty string' do
      it 'should return 0' do
        expect(string_calculator.add('')).to eq 0
      end
    end

    context 'when input is single number string' do
      it 'should return the same number' do
        expect(string_calculator.add('1')).to eq 1
      end
    end
  end
  
end
