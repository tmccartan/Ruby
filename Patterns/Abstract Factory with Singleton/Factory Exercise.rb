#
# ABSTRACT FACTORY EXERCISE
#

#
# ABSTRACT FACTORY EXERCISE
#
require_relative 'cool_factory.rb'
require_relative 'uncool_factory.rb'
require_relative 'deadly_factory.rb'
require_relative 'single_class_factory'
require_relative 'single_factory_abstract'
class Client
	attr_accessor :factory

	def initialize (productFactory)
		@factory = productFactory
		@prod_A = @factory.create_product_A
	end
	def foo
		@prod_A.do_your_stuff
		my_prod_B = @factory.create_product_B
		my_prod_B.do_it
		@prod_C = @factory.create_product_C
		@prod_C.perform
		@prod_D = @factory.create_product_D
		@prod_D.does_something_d_does
	end
end




my_client = Client.new(CoolFactory.instance)
my_client.foo
puts 'cool products done'
my_client = Client.new(UncoolFactory.instance)
my_client.foo
puts 'uncool products done'
my_client = Client.new(DeadlyFactory.instance)
my_client.foo
puts 'deadly products done'
my_client = Client.new(SingleClassFactory.instance(CoolProductA,UncoolProductB,DeadlyProductC,CoolProductD))
my_client.foo
puts 'single class products done'
SingleFactoryAbstract.instance().factory = DeadlyFactory
my_client = Client.new(SingleFactoryAbstract.instance())
my_client.foo
SingleFactoryAbstract.instance().factory = CoolFactory
my_client = Client.new(SingleFactoryAbstract.instance())
my_client.foo
#SingleFactoryAbstract.instance().factory

puts 'single class products done'
puts "Is a Cool factory Singleton #{(CoolFactory.instance.object_id == CoolFactory.instance.object_id)}"
puts "Is a Uncool factory Singleton #{(UncoolFactory.instance.object_id == UncoolFactory.instance.object_id)}"
puts "Is a Deadly factory Singleton #{(DeadlyFactory.instance.object_id == DeadlyFactory.instance.object_id)}"
puts "Is a Deadly the same as the Product  Singleton #{(DeadlyFactory.instance.object_id == ProductFactory.instance.object_id)}"

puts "#{DeadlyFactory.instance.object_id == ProductFactory.instance.object_id}"
puts "#{CoolFactory.instance.object_id == ProductFactory.instance.object_id}"
##puts "#{DeadlyFactory.instance.object_id == }"
puts "#{ProductFactory.instance.object_id == ProductFactory.instance.object_id}"

