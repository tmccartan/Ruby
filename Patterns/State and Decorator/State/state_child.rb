require_relative 'State.rb'
require_relative 'state_teenager.rb'

class StateChild < State

=begin
  @@instance = StateChild.new
  def self.instance
    @@instance
  end
  private_class_method :new
=end
  def vote
    puts "Too young to vote"
  end
  def incr_age(context)
    if(context.age > 10)
      puts 'Grew to Teenager'
      context.state = StateTeenager.instance
    end
  end
  def conscript
      puts "Too young to be conscripted"
  end
  def apply_for_buspass
      puts "Too young for a bus pass"
    ## shoudl this be in the abstract state class
  end
  def apply_for_medical_card
    puts "Medical card approved"
  end
end