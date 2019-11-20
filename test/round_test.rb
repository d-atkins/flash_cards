require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/card'
require './lib/round'

class RoundTest < Minitest::Test

  def test_it_exists
    round = Round.new

    assert_instance_of Round, round
  end

end
