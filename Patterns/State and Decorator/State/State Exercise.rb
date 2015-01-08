
# Mel Ó Cinnéide
# with thanks to Vince Huston for the example
require_relative 'state_adult.rb'
require_relative 'state_child.rb'
require_relative 'state_oap.rb'

class Person
	attr_accessor :age , :state
	def initialize  
		@age = 0
		@state = StateChild.instance
	end

	def incr_age
		@age+=1
		@state.incr_age(self)
		#alternative for this is to have the one if statement here and
		#not pass the incr_age onto the state object
	end

	def vote
		@state.vote
	end

	def apply_for_buspass
		@state.apply_for_buspass
	end
					
	def conscript
		@state.conscript
	end
	def apply_for_medical_card
	@state.apply_for_medical_card
	end
end

p = Person.new
for i in 1..80
  p.incr_age
	p.apply_for_buspass
	p.vote
	p.conscript
	p.apply_for_medical_card
end