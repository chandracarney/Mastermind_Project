class MessagePrinter
  def intro
    "Welcome to Mastermind, where all the women are strong and all the men are good looking."
    program_instructions
  end

  def program_instructions
    "Enter 'p' to play, 'i' for instructions, or 'q' to quit."
  end

  def command_request
    "Enter your command:"
  end

  def game_instructions
    "The cmputer makes a random sequence of colors in a certain order, you must guess the colors and order."
  end

  def quitting
    "Adios!"
  end

  def game_intro
    "I have generated a beginner sequence with four colors made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What's your guess?"
  end

  def turn_indicator(turns)
    "This is turn #{turns}."
  end

  def game_command_request
    "Enter your next guess: "
  end

  def game_quit
    "Exiting the game."
  end

  def game_win
    puts "You win!"
    program_instructions
  end

  def valid_guess(command, random_sequence)
    puts "You have #{correct_color} correct colors.
    And #{correct_position} are in the correct position" ####
  end

  # def wrong_characters
  #   puts "You do not have the correct number of characters in your guess"
  # end

  # def not_a_valid_letter
  #   puts "Your guess has one or more letters that do not match r(ed),
  #   (g)reen, (b)lue, and (y)ellow. Please take another guess with these letters."
  # end

  # def not_a_valid_command
  #   puts "That's not a valid command. Please enter a guess or press 'i' for instructions, or 'q' to quit."
  #   program_instructions
  # end
end

# -display welcome message
# -display option for new instructions, option to quit, option for new game
# -display instructions
# -display success
# -display incorrect answer
# -display results
# -display current score
# -prompt them to guess
# -display how many colors are correct
# -display how many colors are in the right position
#
