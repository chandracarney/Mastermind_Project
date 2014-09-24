class CompareGuess

  def initialize(command, random_sequence)
    @command = command
    @random_sequence = random_sequence
  end

  def correct_position
    (0..3).inject(0) do |sum, index|
      @command[index] == @random_sequence[index] ? sum + 1 : sum
    end
  end

  def correct_color
    @command.chars.uniq.join.scan(("[#{@random_sequence}]")).count
  end


end
# CompareGuess.new.correct_position
# CompareGuess.new.correct_color


# compare correct positions:
# guess_pairs = random_sequence.chars.zip(guess.chars)
# guess_pairs.select { |pair| pair[0] == pair [1] }.count
# random_sequence.chars.each_with_index { color, i }
# random_sequence.chars
# compare solution sequence to guess sequence
