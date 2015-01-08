require 'Singleton'
class ProductFactory
  # singleton

  #create class instance of new
  @@controlInstance
  #cant hide new method in here because children class depend on it
  #private_class_method :new
  def initialize
##    undef_method :new
  end

  def self.instance
    return @@controlInstance
  end

  def self.register(concreteInstance)
    @@controlInstance = concreteInstance;
  end



  def create_product_A
    raise "Abstract method called"
  end
  def create_product_B
    raise "Abstract method called"
  end
  def create_product_C
    raise "Abstract method called"
  end
  def create_product_D
    raise "Abstract method called"
  end
  end