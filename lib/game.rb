class Game
  attr_reader :turns,
              :random_sequence,
              :printer,
              :command,
              :check_guess,
              :start_time

  def initialize(printer = MessagePrinter.new)
    @turns           = 1
    @random_sequence = SequenceGenerator.new.random_sequence
    @printer         = printer
    @command         = Command.new
    @win             = false
    @start_time      = Time.now
  end

  def play
    printer.game_intro
    until win? || command.exit?
      printer.turn_indicator(turns)
      printer.game_command_request
      @command.command = gets.strip.downcase
      process_game_turn
    end
    after_win if win?
  end

  private

  def process_game_turn
    return if command.exit?
    if command.invalid_characters?
      printer.not_a_valid_command
    elsif command.too_many_characters?
      printer.too_many_characters
    elsif command.too_few_characters?
      printer.too_few_characters
    else
      continue_game
    end
  end

  def continue_game
    @check_guess = CompareGuess.new(@command, random_sequence)
    check_for_win
    printer.valid_guess(@check_guess.correct_color, @check_guess.correct_position)
    add_turn
  end

  def check_for_win
    if @check_guess.correct_position == 4
      @win = true
    end
  end

  def after_win
    printer.game_win(random_sequence)
    printer.win_timer(minutes_to_win, seconds_to_win)
  end

  def minutes_to_win
     total_seconds / 60
  end

  def seconds_to_win
    (total_seconds % 60).to_i
  end

  def total_seconds
    ((Time.now - start_time).to_i)
  end

  def win?
    @win
  end

  def add_turn
    @turns += 1
  end
end
