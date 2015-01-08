require_relative('i_play_strategy')

class BinaryStrategy < IPlayStrategy

  attr_accessor :lower
  attr_accessor :upper

  def setup_strategy(lower,upper) 
    @lower = lower
    @upper = upper
  end
  def make_guess()
    (@lower+@upper)/2
  end
  def post_guess_process_hook(result, num)
    if result == :less_than
      @upper = num-1
    elsif result == :greater_than
      @lower = num+1
    end
    num=(@lower+@upper)/2
  end
end