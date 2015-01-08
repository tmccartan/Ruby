require_relative('i_play_strategy')

class RandomStrategy <IPlayStrategy
  attr_accessor :lower
  attr_accessor :upper

  def setup_strategy(lower,upper)
    @lower = lower
    @upper = upper
  end

  def make_guess()
    Kernel.rand(@lower..@upper)
  end

end