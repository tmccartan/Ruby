
require_relative 'oracle.rb'
require_relative 'subject.rb'

# Tries to guess the 'secret' number using several different strategies
class Participant
  include Subject
  attr_reader :num_attempts, :name , :strategy , :age


  def initialize(oracle, name, max_num_attempts:10)
    super()
    @oracle, @max_num_attempts = oracle, max_num_attempts
    @num_attempts = 0
    @name = name
    @age = Kernel.rand(1..10)
    self.state = :start
  end
  
  def reset
    @num_attempts = 0
    self.state =:resetting
  end

  def play_randomly(lower,upper)
    @strategy = :randomly
    self.state =:guessing
    num = Kernel.rand(lower..upper)
    @num_attempts+=1
    while @oracle.is_this_the_number?(num)!=:correct && (@num_attempts <= @max_num_attempts) do
      # puts "#{__method__}:I guessed #{num}"
      num = Kernel.rand(lower..upper)
      @num_attempts+=1
    end
    if (@num_attempts <= @max_num_attempts)
      # puts "#{__method__}: Yippee, I guessed #{num} and won!"
      self.state = :success
    else
      self.state = :fail
    end
  end

  def play_linear(lower)
    num=lower
    @num_attempts+=1
    @strategy = :linear
    self.state =:guessing
    ## puts"num_attempts: #{@num_attempts}"
    while @oracle.is_this_the_number?(num)!=:correct && (@num_attempts <= @max_num_attempts) do
      # puts "#{__method__}:I guessed #{num}"
      num+=1
      @num_attempts+=1
      ## puts"num_attempts: #{@num_attempts}"
    end
    if (@num_attempts <= @max_num_attempts)
      # puts "#{__method__}: Yippee, I guessed #{num} and won!"
      self.state = :success
    else
      self.state = :fail
    end
  end

  def play_smart_random(lower, upper)
    num = Kernel.rand(lower..upper)
    @num_attempts+=1
    @strategy = :linear
    self.state =:guessing
    while ((result = @oracle.is_this_the_number?(num)) != :correct) && (@num_attempts <= @max_num_attempts) do
      # puts "#{__method__}: I guessed #{num}"
      if result == :less_than
        upper = num-1
      elsif result == :greater_than
        lower = num+1
      end
      num = Kernel.rand(lower..upper)
      @num_attempts+=1
    end
    if (@num_attempts <= @max_num_attempts)
      # puts "#{__method__}: Yippee, I guessed #{num} and won!
      self.state = :success
    else
      self.state = :fail
    end
  end

  def play_binary_search(lower, upper)
    num = (lower+upper)/2
    @num_attempts+=1
    @strategy = :linear
    self.state =:guessing
    while ((result = @oracle.is_this_the_number?(num)) != :correct) && (@num_attempts <= @max_num_attempts) do
      # puts "#{__method__}:I guessed #{num}"
      if result == :less_than
        upper = num-1
      elsif result == :greater_than
        lower = num+1
      end
      num=(lower+upper)/2
      @num_attempts+=1
    end
    if (@num_attempts <= @max_num_attempts)
      # puts "#{__method__}: Yippee, I guessed #{num} and won!"
      self.state = :success
    else
      self.state = :fail
    end
  end

  private
  def fail
    # puts "Boo hoo. I made #{@num_attempts} attempts and failed."
    @state = :fail
    notify_observers
  end
  def success
    @state = :success
  end

end