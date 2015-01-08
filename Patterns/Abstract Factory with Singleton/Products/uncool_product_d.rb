require_relative 'product_c.rb'
class UncoolProductD<ProductD
  def does_something_d_does
    puts "I'm a #{self.class.name}, and im new"
  end
end