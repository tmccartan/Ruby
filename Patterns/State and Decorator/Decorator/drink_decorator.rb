require 'forwardable'
class DrinkDecorator
  extend Forwardable

  def_delegators :@real_drink, :description, :cost
  def initialize(real_drink)

    @real_drink = real_drink;
  end
end