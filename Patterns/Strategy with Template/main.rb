
# Evaluate the performance of participants using different guessing strategies

require_relative 'oracle.rb'
require_relative 'participant.rb'
require_relative 'Participants/binary_strategy'
require_relative 'Participants/linear_strategy'
require_relative 'Participants/random_strategy'
require_relative 'Participants/smart_strategy'


NUM_OF_RUNS = 8

oracle = Oracle.new

# evaluate random strategy
total_num_attempts = 0
total_num_failures = 0
homer = Participant.new(oracle, max_num_attempts: NUM_OF_RUNS*2)
homer.strategy = RandomStrategy.new
1.upto(NUM_OF_RUNS) do |i|
  oracle.secret_number = i
  homer.reset
  if homer.play(1,NUM_OF_RUNS)==:success
    # puts "play randomly found #{i} in #{homer.num_attempts} attempts"
    total_num_attempts += homer.num_attempts
  else
    # puts "play randomly failed to find #{i} after #{homer.num_attempts} attempts"
    total_num_failures += 1
  end
end
puts "play randomly took on average #{total_num_attempts/(NUM_OF_RUNS-total_num_failures)} attempts to succeed"

# evaluate linear strategy
total_num_attempts = 0
total_num_failures = 0
##bart = Participant.new(oracle, max_num_attempts:NUM_OF_RUNS*2)
homer.strategy = LinearStrategy.new

1.upto(NUM_OF_RUNS) do |i|
  oracle.secret_number = i
  homer.reset
  if homer.play(1,NUM_OF_RUNS)==:success
    # puts "play_linear found #{i} in #{bart.num_attempts} attempts"
    total_num_attempts += homer.num_attempts
  else
    # puts "play_linear failed to find #{i} after #{bart.num_attempts} attempts"
    total_num_failures += 1
  end
end
puts "play_linear took on average #{total_num_attempts/(NUM_OF_RUNS-total_num_failures)} attempts to succeed"

# evaluate 'smart random' strategy
total_num_attempts = 0
total_num_failures = 0
#maggie = Participant.new(oracle, max_num_attempts:NUM_OF_RUNS*5)
homer.strategy = SmartStrategy.new()

1.upto(NUM_OF_RUNS) do |i|
  oracle.secret_number = i
  homer.reset
  if homer.play(1,NUM_OF_RUNS)==:success
    # puts "play_smart_random found #{i} in #{maggie.num_attempts} attempts"
    total_num_attempts += homer.num_attempts
  else
    # puts "play_smart_random failed to find #{i} after #{maggie.num_attempts} attempts"
    total_num_failures += 1
  end
end
puts "play_smart_random took on average #{total_num_attempts/(NUM_OF_RUNS-total_num_failures)} attempts to succeed"

# evaluate binary search strategy
total_num_attempts = 0
total_num_failures = 0
#lisa = Participant.new(oracle, max_num_attempts:NUM_OF_RUNS*5)
homer.strategy = BinaryStrategy.new

1.upto(NUM_OF_RUNS) do |i|
  oracle.secret_number = i
  homer.reset
  if homer.play(1,NUM_OF_RUNS)==:success
    # puts "play_binary_search found #{i} in #{lisa.num_attempts} attempts"
    total_num_attempts += homer.num_attempts
  else
    # puts "play_binary_search failed to find #{i} after #{lisa.num_attempts} attempts"
    total_num_failures += 1
  end
end
puts "play_binary_search took on average #{total_num_attempts/(NUM_OF_RUNS-total_num_failures)} attempts to succeed"
