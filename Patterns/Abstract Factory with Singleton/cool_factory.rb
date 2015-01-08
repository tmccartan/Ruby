require_relative 'product_factory.rb'
require_relative 'Products/cool_product_a.rb'
require_relative 'Products/cool_product_b.rb'
require_relative 'Products/cool_product_c.rb'
require_relative 'Products/cool_product_d.rb'

class CoolFactory <ProductFactory
  #create class instance of new



  @@instance = CoolFactory.new
  ##hide new
  private_class_method :new

  def self.instance
    return ProductFactory.register(@@instance)
  end

  def create_product_A
    CoolProductA.new
  end
  def create_product_B
    CoolProductB.new
  end
  def create_product_C
    CoolProductC.new
  end
  def create_product_D
    CoolProductD.new
  end
end