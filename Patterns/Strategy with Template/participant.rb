
require_relative 'oracle.rb'
require_relative 'Participants/i_play_strategy.rb'
# Tries to guess the 'secret' number using several different strategies

class Participant
  attr_reader :oracle
  attr_accessor  :strategy, :num_attempts, :max_num_attempts

  def initialize( oracle, max_num_attempts:10)
    @max_num_attempts =  max_num_attempts
    @num_attempts = 0
    @oracle = oracle
    @strategy = nil
  end

  def reset
    @num_attempts = 0
  end
  def play (lower, upper)
    @strategy.play(self,lower,upper)
  end




end