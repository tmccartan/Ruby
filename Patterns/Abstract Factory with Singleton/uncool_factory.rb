require_relative 'product_factory.rb'
require_relative 'Products/uncool_product_a.rb'
require_relative 'Products/uncool_product_b.rb'
require_relative 'Products/uncool_product_c.rb'
require_relative 'Products/uncool_product_d.rb'

class UncoolFactory < ProductFactory
  #create class instance of new
  @@instance = UncoolFactory.new
  ##hide new
  private_class_method :new

  def self.instance
    return ProductFactory.register(@@instance)
  end

  def create_product_A
    UncoolProductA.new
  end
  def create_product_B
    UncoolProductB.new
  end
  def create_product_C
    UncoolProductC.new
  end
  def create_product_D
    UncoolProductD.new
  end
end