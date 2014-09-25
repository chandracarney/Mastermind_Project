class CLI
  attr_reader :command, :printer

  def initialize
    @command = ""
    @printer = MessagePrinter.new
  end

  def start
    puts printer.intro
    process_initial_commands
    play_again
  end

  private

  def process_initial_commands
    puts printer.program_instructions
    puts printer.command_request
    @command = gets.strip.downcase
    case
    when play?
      game = Game.new(printer)
      game.play
    when exit?
        puts printer.game_quit
    when instructions?
      puts printer.game_instructions
      process_initial_commands
    # else
    #   puts printer.not_a_valid_command
    end
  end

  def play_again
    puts printer.play_again
    @command = gets.strip.downcase
    if play_again?
      process_initial_commands
    end
  end

  def play?
    command == "p" || command == "play"
  end

  def instructions?
    command == "i" || command = "instructions"
  end

  def exit?
    command == "q" || command == "quit"
  end

  def play_again?
    command == "y" || command == "yes"
  end
end

# -validate user input (if "" < 4 you have too few characters)
# -way for user to quit the game, play, ask for instructions
