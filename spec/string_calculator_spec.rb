require 'string_calculator'
RSpec.describe StringCalculator do

  it 'creates a string_calculator class' do
    string_calculator = StringCalculator.new
    expect(string_calculator).to be_kind_of(StringCalculator)
  end

  it 'has a add method' do
    string_calculator = StringCalculator.new
    expect(string_calculator).to respond_to(:add)
  end
  
end
