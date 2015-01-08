require_relative 'decaff.rb'
require_relative 'espresso.rb'
require_relative 'milk_decorator.rb'
require_relative 'sugar_decorator.rb'

# Mel Ó Cinnéide
# with thanks to Freeman&co. for the example


my_coffee = SugarDecorator.new(MilkDecorator.new((Decaff.new)))
puts "My coffee is:"
puts my_coffee.description
puts "and costs:"
puts my_coffee.cost
my_coffee = MilkDecorator.new(SugarDecorator.new((Espresso.new)))
puts "My coffee is:"
puts my_coffee.description
puts "and costs:"
puts my_coffee.cost



my_coffee = SugarDecorator.new(Espresso.new)
puts "My coffee is:"
puts my_coffee.description
puts "and costs:"
puts my_coffee.cost

my_coffee = SugarDecorator.new(Espresso.new)
puts "My coffee is:"
puts my_coffee.description
puts "and costs:"
puts my_coffee.cost

my_coffee = Espresso.new
puts "My coffee is:"
puts my_coffee.description
puts "and costs:"
puts my_coffee.cost

my_coffee = Decaff.new
puts "My coffee is:"
puts my_coffee.description
puts "and costs:"
puts my_coffee.cost

