class SequenceGenerator

  def random_sequence
    random_colors = ["r","r","g","b","y"]
    random_colors.shuffle.join
  end
end

#(0..3).map { ('r', 'g', 'b', 'y').to_a[rand(4)] }.join
