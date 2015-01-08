require 'Singleton'
class SingleClassFactory
  # singleton

  #create class instance of new
  @@controlInstance = SingleClassFactory.new
  ##hide new
  @@product_class_a
  @@product_class_b
  @@product_class_c
  @@product_class_d

  private_class_method :new
  def self.instance(prod_a,prod_b,prod_c,prod_d)

    @@product_class_a = prod_a
    @@product_class_b = prod_b
    @@product_class_c = prod_c
    @@product_class_d = prod_d
    return @@controlInstance
  end

  private_class_method :new

  def create_product_A()
    @@product_class_a.new
  end
  def create_product_B()
    @@product_class_b.new
  end
  def create_product_C()
    @@product_class_c.new
  end
  def create_product_D()
    @@product_class_d.new
  end
  end