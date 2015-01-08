class StrategyTemplate

  #template method
  def do_play(context,lower,upper)
    setup_strategy(lower,upper)
    num = make_guess()
    context.num_attempts+=1
    until_finished(context ,num)
    can_continue(context)
  end

  def setup_strategy(lower,upper)
    raise 'Abstract called setup_strategy'
  end
  def make_guess
    raise 'Abstract called make_guess'
  end

  def until_finished(context,num)
    while ((result = context.oracle.is_this_the_number?(num)) != :correct) && (context.num_attempts <= context.max_num_attempts) do
      # puts "#{__method__}:I guessed #{num}"
      post_guess_process_hook(result, num)
      num = make_guess()
      context.num_attempts+=1
    end
  end

  def post_guess_process_hook(result, num)
  #hook
  end
  def can_continue (context)
    if (context.num_attempts <= context.max_num_attempts)
      # puts "#{__method__}: Yippee, I guessed #{num} and won!"
      :success
    else
      fail
    end
  end
  private
  def fail
    # puts "Boo hoo. I made #{@num_attempts} attempts and failed."
    :fail
  end
end