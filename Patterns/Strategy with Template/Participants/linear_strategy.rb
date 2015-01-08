require_relative('i_play_strategy')

class LinearStrategy < IPlayStrategy
  attr_accessor :lower

  def setup_strategy(lower,upper)
    @lower = lower
  end
  def make_guess
    @lower
  end
  def post_guess_process_hook(result,num)
    @lower+=1
  end
end

