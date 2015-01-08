require_relative 'product_b.rb'
class UncoolProductB<ProductB
  def do_it
    puts "I'm a #{self.class.name}, doing it"
  end
end