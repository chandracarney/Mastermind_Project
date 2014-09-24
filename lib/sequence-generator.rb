class SequenceGenerator

  def random_sequence
    random_colors = ["r","g","b","y"]  # => ["r", "g", "b", "y"]
    random_colors.shuffle.join         # => "rygb"
  end
end

SequenceGenerator.new.random_sequence  # => "rygb"

#(0..3).map { ('r', 'g', 'b', 'y').to_a[rand(4)] }.join
