require_relative('strategy_template')

class IPlayStrategy < StrategyTemplate

  def play(context,lower,upper)
    do_play(context,lower,upper)
  end


end