require_relative 'drink_decorator.rb'

class SugarDecorator  < DrinkDecorator
  def initialize(drink)
    super(drink)
    @real_drink = drink
  end
  def description
    @real_drink.description + " Sugar"
  end
  def cost
    0.20 + @real_drink.cost
  end
end