"rggb" #=> { r: 1, g: 2, b: 1, :y 0 }


@reds = answer.scan('r').count     # => 1
@greens = answer.scan('g').count   # => 2
@blues = answer.scan('b').count    # => 0
@yellows = answer.scan('y').count  # => 1

_________________
class GameChecker

  attr_reader :answer   # => nil
  attr_accessor :guess  # => nil

  def initialize(answer, guess = nil)
    @answer = answer                   # => "rggy"
    @guess = guess                     # => "yyyy"
  end

  def correct_position
    in_correct_position = 0                               # => 0
    guess.chars.each_index do |i|                         # => ["y", "y", "y", "y"]
      in_correct_position += 1  if guess[i] == answer[i]  # => nil, nil, nil, 1
    end                                                   # => ["y", "y", "y", "y"]
    in_correct_position                                   # => 1
  end

  # rggy
  # yyyb

end

g = GameChecker.new("rggy", "yyyy")  # => #<GameChecker:0x007fcacb206eb0 @answer="rggy", @guess="yyyy">
g.correct_position                   # => 1
_____________

class GameChecker

  attr_reader :answer
  attr_accessor :guess

  def initialize(answer, guess = nil)
    @answer = answer
    @guess = guess
  end

  def correct_position
    result = []
    guess.chars.each_index do |i|
      result << guess[i] == answer[i]
    end
  end

  def indexes_of_letters_in_correct_position

  end

end

________

@random_sequence = "rrbb"  # => "rrbb"
@input = "rbgb"            # => "rbgb"
@incorrect = []            # => []

def initialize
  @storage = storage
end

def storage
  @storage   # => nil
end

def correct_position_and_color?
  @storage = []                                  # => []
  @input.chars.each_index do |index|             # => ["r", "b", "g", "b"]
    if @input[index] == @random_sequence[index]  # => true, false, false, true
      @storage << index                          # => [0], [0, 3]
    else
      @incorrect << index                        # => [1], [1, 2]
    end                                          # => [0], [1], [1, 2], [0, 3]
  end                                            # => ["r", "b", "g", "b"]
  @storage.count                                 # => 2
end

def correct_color?
  @one_that_are_left = []
end

storage                      # => nil
correct_position_and_color?  # => 2
correct_color?               # => 0
@incorrect                   # => [1, 2]

_________________________

@random_sequence = "rrbb"  # => "rrbb"
@input = "rggb"            # => "rggb"
@incorrect = []            # => []

def initialize
  @storage = storage
end

def storage
  @storage   # => nil
end

def correct_position_and_color?
  @storage = []                                  # => []
  @input.chars.each_index do |index|             # => ["r", "g", "g", "b"]
    if @input[index] == @random_sequence[index]  # => true, false, false, true
      @storage << 'true'                         # => ["true"], ["true", "true"]
    else
      @incorrect << @input[index]                # => ["g"], ["g", "g"]
    end                                          # => ["true"], ["g"], ["g", "g"], ["true", "true"]
  end                                            # => ["r", "g", "g", "b"]
  @storage.count                                 # => 2
end

def correct_color?
  @input.scan(/[yrbg]/).count  # => 4
end

storage                      # => nil
correct_position_and_color?  # => 2
correct_color?               # => 4
@incorrect  
