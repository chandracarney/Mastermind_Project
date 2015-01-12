class CLI
  attr_reader :command, :printer

  def initialize
    @command = Command.new
    @printer = MessagePrinter.new
  end

  def start
    printer.intro
    process_initial_commands
    play_again
  end

  private

  def process_initial_commands
    printer.program_instructions
    printer.command_request
    @command.command = gets.strip.downcase
    case
    when command.play?
      game = Game.new(printer)
      game.play
    when command.exit?
      printer.game_quit
    when command.instructions?
      printer.game_instructions
      process_initial_commands
    end
  end

  def play_again
    printer.play_again
    @command = Command.new(gets.strip.downcase)
    if command.play_again?
      process_initial_commands
    end
  end
end
