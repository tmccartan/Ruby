require_relative 'State.rb'

class StateOAP<State

=begin
  @@instance = StateOAP.new
  def self.instance
    @@instance
  end
  private_class_method :new
=end

  def vote
    puts "Vote accepted"
  end
  #no need to implement incr_age
  def conscript
    puts "Too old to be conscripted"
  end
  def apply_for_buspass
    puts "Pass granted"
  end
  def apply_for_medical_card
    puts "Medical card approved"
  end
end