class SingleFactoryAbstract
  # singleton
  attr_accessor :factory
  #create class instance of new
  @@controlInstance = SingleFactoryAbstract.new
  ##hide new

  private_class_method :new
  def self.instance()
    return @@controlInstance
  end

  private_class_method :new

  def create_product_A()
    factory.instance.create_product_A()
  end
  def create_product_B()
    factory.instance.create_product_B()
  end
  def create_product_C()
    factory.instance.create_product_C()
  end
  def create_product_D()
    factory.instance.create_product_D()
  end
  end