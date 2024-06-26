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

    context 'when input string has two comma separated numbers' do
      it 'should return the sum of two numbers' do
        expect(string_calculator.add('1,5')).to eq 6
      end
    end

    context 'when input string has any amount of numbers' do
      it 'should return the sum of all numbers' do
        expect(string_calculator.add('1,5,7,9')).to eq 22
      end
    end

    context 'when input string has new lines between numbers' do
      it 'should return the sum of all numbers' do
        expect(string_calculator.add('1\n2,3')).to eq 6
      end
    end

    context 'when input string has delimeters side by side' do
      it 'raise invalid error' do
        expect(string_calculator.add('1,\n')).to eq 'Invalid'
      end
    end

    context 'when input string has different delimeter' do
      it 'should return the sum of all numbers' do
        expect(string_calculator.add('//;\n1;2')).to eq 3
      end
    end

    context 'when input string contains negative numbers' do
      it 'should raise an exception with the negative numbers in the message' do
        expect { string_calculator.add('1,-5,-7,9') }.to raise_error('negative numbers not allowed -5, -7')
      end
    end

    context 'when input string contains numbers bigger than 1000' do
      it 'should be ignored' do
        expect(string_calculator.add('2, 1001')).to eq 2
      end
    end
  end
  
end
