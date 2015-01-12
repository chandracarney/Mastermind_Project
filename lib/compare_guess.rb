class CompareGuess

  def initialize(user_input, random_sequence)
    @user_input = user_input
    @random_sequence = random_sequence
  end

  def correct_position
    (0..3).inject(0) do |sum, index|
      @user_input.command[index] == @random_sequence[index] ? sum + 1 : sum
    end
  end

  def correct_color
    @user_input.command.chars.uniq.join.scan(Regexp.new("[#{@random_sequence}]")).count
  end
end
