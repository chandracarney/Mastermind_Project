class Game
  attr_reader :turns,
              :random_sequence,
              :printer,
              :command,
              :check_guess

  def initialize(printer = MessagePrinter.new)
    @turns           = 1
    @random_sequence = SequenceGenerator.new
    @printer         = printer
    @command         = ""
    @check_guess     = CompareGuess.new
    # @time            =
  end

  def play
    puts printer.game_intro
    until win? || exit?
      puts printer.turn_indicator(turns)
      puts printer.game_command_request
      @command = gets.strip.split("")
      @process_game_turn
    end
  end

  private

  def process_game_turn
    return if exit?
    correct_position = check_guess(command, random_sequence)
    correct_color = check_guess(command, random_sequence)
    case
    

    when win?
      puts printer.game_win
    # when wrong_number_of_characters?
    #   printer.wrong_characters

    end
  end

  # def command
  #   printer.guess_correct_position(position)
  #   printer.guess_correct_color
  #   add_turn
  # end

  def add_turn
    @turns += 1
  end

  def win?
    command == random_sequence ####
  end

  def exit?
    command == "q" || command == "quit"
  end

  def wrong_number_of_characters?
    command > 4 || command < 4
  end


  # def time
  #   strftime
  # end
end

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
