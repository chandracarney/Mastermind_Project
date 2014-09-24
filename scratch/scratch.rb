@random_sequence = "rrbb"
@input = "rggg"

def initialize
  @storage = storage
end

def storage
  @storage
end


def correct_position?
  @storage = []
  (0..3).each do |index|
    @input[index] == @random_sequence[index]
    @storage << index
  end
  @storage
end

storage
correct_position?
