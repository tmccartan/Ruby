require_relative 'drink_decorator.rb'

class MilkDecorator  <DrinkDecorator
  def initialize(drink)
    super(drink)
    @real_drink = drink
  end
  def description
    @real_drink.description + " Milk"
  end
  def cost
    0.50 + @real_drink.cost
  end
end