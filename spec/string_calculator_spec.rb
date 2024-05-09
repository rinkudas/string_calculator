require 'string_calculator'
RSpec.describe StringCalculator do
  let(:string_calculator) { StringCalculator.new }

  it 'creates a string_calculator class' do
    string_calculator = StringCalculator.new
    expect(string_calculator).to be_kind_of(StringCalculator)
  end

  it 'has a add method' do
    string_calculator = StringCalculator.new
    expect(string_calculator).to respond_to(:add)
  end

  describe 'add' do
    context 'when input is empty string' do
      it 'should return 0' do
        expect(string_calculator.add('')).to eq 0
      end
    end
  end
  
end
