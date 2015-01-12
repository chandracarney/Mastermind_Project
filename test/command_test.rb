require 'minitest/autorun'
# require 'minitest/pride'
require_relative '../lib/command'

class TestInputValidation < Minitest::Test
  def test_it_can_tell_if_invalid_characters
    good_command = Command.new("rrrr")
    bad_command = Command.new("frrr")
    assert bad_command.invalid_characters?
    refute good_command.invalid_characters?
  end

  def test_wrong_number_of_characters
    too_many = Command.new("yyyyyyy")
    too_few = Command.new("yyy")
    assert too_many.too_many_characters?
    assert too_few.too_few_characters?
  end
end
