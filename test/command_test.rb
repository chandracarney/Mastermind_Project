require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/guess_stats'

class TestInputValidation < Minitest::Test
  def test_it_can_tell_if_input_is_invalid
    good_input = "rrrr"
    bad_input = "frrr"
    assert bad_input.invalid_input?
    refute good_input.ivalid_input?
  end
end
