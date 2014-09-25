class Game
  attr_reader :turns,
              :random_sequence,
              :printer,
              :command,
              :check_guess,
              :start_time,
              :end_time,
              :total_time

  def initialize(printer = MessagePrinter.new)
    @turns           = 1
    @random_sequence = SequenceGenerator.new.random_sequence
    @printer         = printer
    @command         = ""
    @start_time      = start_time
    @end_time        = end_time
    @total_time      = total_time
  end

  def play
    puts printer.game_intro
    @start_time = Time.now
    until win? || exit?
      puts printer.turn_indicator(turns)
      puts printer.game_command_request
      @command = gets.strip.downcase
      process_game_turn
    end
    winning
  end

  private

  def process_game_turn
    return if exit?
    check_guess = CompareGuess.new(command, random_sequence)
    puts printer.valid_guess(check_guess.correct_color, check_guess.correct_position)
    add_turn
  end

  def winning
    @end_time = Time.now
    @total_time = (end_time - start_time).to_i
    puts printer.game_win
  end

  def add_turn
    @turns += 1
  end
end

# def time
#   strftime
# end

# when wrong_number_of_characters?
#   printer.wrong_characters

# -string too long
# -string too short

# track how many times guessed
# track time
# difficulty
# when they generate
# -record keeper
# time
# guess numbers
# get user input
# -keep score
# -keep time
# -run a game loop
