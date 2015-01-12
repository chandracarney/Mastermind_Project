class Command
  attr_accessor :command

  def initialize(command = "")
    @command = command
  end

  def exit?
    command == "q" || command == "quit"
  end

  def too_few_characters?
    command.length < 4
  end

  def too_many_characters?
    command.length > 4
  end

  def invalid_characters?
    command.scan(/[^rgby]/).count > 0
  end

  def play?
    command == "p" || command == "play"
  end

  def instructions?
    command == "i" || command = "instructions"
  end

  def play_again?
    command == "y" || command == "yes"
  end
end
