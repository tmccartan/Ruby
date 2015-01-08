require_relative 'State.rb'
require_relative 'state_oap'

class StateAdult <State

=begin
  @@instance = StateAdult.new
  def self.instance
    @@instance
  end
  private_class_method :new
=end
  def vote
    puts "Vote accepted"
  end
  def incr_age(context)
    if(context.age >65)
      puts 'Grew to OAP'
      context.state = StateOAP.instance
    end
  end
  def conscript
    puts "Here's your gun"
  end
  def apply_for_buspass
    puts "Too young for a bus pass"
  end
  def apply_for_medical_card
    puts "Medical card denied"
  end
end