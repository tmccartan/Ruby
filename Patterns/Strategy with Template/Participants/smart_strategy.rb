require_relative('i_play_strategy')

class SmartStrategy <IPlayStrategy
  attr_accessor  :upper
  attr_accessor  :lower
  

  def setup_strategy(lower,upper)
    @lower = lower
    @upper = upper
  end

  def make_guess()
   Kernel.rand(@lower..@upper)
  end
  def post_guess_process_hook(result,num)
    if result == :less_than
      @upper = num-1
    elsif result == :greater_than
      @lower = num+1
    end
  end
end