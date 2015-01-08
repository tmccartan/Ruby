require_relative 'state.rb'
class StateTeenager<State

=begin
  @@instance = StateTeenager.new
  def self.instance
    @@instance
  end
  private_class_method :new
=end

  def vote
    puts "Too young to vote"
  end
  def incr_age(context)
    if(context.age > 18)
      puts 'Grew to Adult'
      context.state = StateAdult.instance
    end
  end
  def conscript
    puts "Here's your gun"
  end
  def apply_for_buspass
    puts "Pass granted"
  end
  def apply_for_medical_card
    puts "Medical card denied"
  end
end