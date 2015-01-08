require_relative 'product_a.rb'
class CoolProductA <ProductA
  def do_your_stuff
    puts "I'm a #{self.class.name}, doing my stuff"
  end

end