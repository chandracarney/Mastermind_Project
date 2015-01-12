class MessagePrinter
  def intro
    puts "\nWelcome to Mastermind, where all the women are strong and all the men are good looking."
  end

  def program_instructions
    puts "Enter 'p' to play, 'i' for instructions, or 'q' for quit."
  end

  def command_request
    puts "\nEnter your command below"
  end

  def game_instructions
    puts "\nThe computer makes a random sequence of colors in a certain order, you must guess the colors and order."
  end

  def quitting
    puts "Adios!"
  end

  def game_intro
    puts "\nPlease enter a combination of four colors made up of: (r)ed, (g)reen,
    (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What's your guess?"
  end

  def turn_indicator(turns)
    puts "\nThis is turn #{turns}."
  end

  def game_command_request
    puts "Save Lake Wobegon by entering your guess below"
  end

  def game_quit
    puts "Exiting the game. So long!"
  end

  def game_win(random_sequence)
    puts "\nYou won! Garrison Keillor is pleased that you have guessed '#{random_sequence.upcase}'."
  end

  def win_timer(minutes_to_win, seconds_to_win)
    puts "You finished this game in #{minutes_to_win} minute(s) and #{seconds_to_win} second(s)."
  end

  def valid_guess(correct_color, correct_position)
    puts "\nYou have #{correct_color} correct color(s).
    And #{correct_position} in the correct position(s)."
  end

  def play_again
    puts "\nAre you sure? Or would you like to play again? Enter (y)es or (q)uit."
  end

  def not_a_valid_command
    puts "\nThat's not a valid command. Please enter a combination of four colors:
    (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
  end

  def too_few_characters
    puts "\nYou have too few characters."
  end

  def too_many_characters
    puts "\nYou have too many characters."
  end
end
