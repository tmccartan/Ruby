require_relative 'product_factory.rb'
require_relative 'Products/deadly_product_a.rb'
require_relative 'Products/deadly_product_b.rb'
require_relative 'Products/deadly_product_c.rb'
require_relative 'Products/deadly_product_d.rb'

class DeadlyFactory<ProductFactory
  #create class instance of new
  @@instance = DeadlyFactory.new
  ##hide new
  private_class_method :new


  def self.instance
    return ProductFactory.register(@@instance)
  end

  def create_product_A
    DeadlyProductA.new
  end
  def create_product_B
    DeadlyProductB.new
  end
  def create_product_C
    DeadlyProductC.new
  end
  def create_product_D
    DeadlyProductD.new
  end
end