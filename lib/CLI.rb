class CLI
  attr_reader :command, :printer

  def initialize
    @command = ""
    @printer = MessagePrinter.new
  end

  def start
    puts printer.intro
    until exit?
      puts printer.command_request
      @command = gets.strip
      process_initial_commands
    end
    puts printer.quitting
  end

  private

  def process_initial_commands
    case
    when play?
      game = Game.new(printer)
      game.play
    when instructions?
      puts printer.game_instructions
    when exit?
      puts printer.game_quit
    else
      puts printer.not_a_valid_command
    end
  end

  def play?
    command == "p"
  end

  def instructions?
    command == "i"
  end

  def exit?
    command == "q" || command == "quit"
  end
end

# -validate user input (if "" < 4 you have too few characters)
# -way for user to quit the game, play, ask for instructions
