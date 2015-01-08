require_relative 'product_d.rb'
class CoolProductD<ProductD
  def does_something_d_does
    puts "I'm a #{self.class.name}, and im new"
  end
end