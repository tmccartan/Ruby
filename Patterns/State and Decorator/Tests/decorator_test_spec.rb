require 'rspec'
require_relative '../Decorator/Decorator Exercise'
describe 'Decorator behaviour' do

  it 'should do count cost' do
    my_coffee = SugarDecorator.new(MilkDecorator.new((Decaff.new)))
    my_coffee.cost == 2.7
    my_coffee = SugarDecorator.new(MilkDecorator.new((Espresso.new)))
    my_coffee.cost == 2.2
  end
end