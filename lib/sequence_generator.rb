class SequenceGenerator

  def random_sequence
    random_colors = ["r","g","b","y","y","y","y"]
    random_colors.shuffle.join
  end
end
