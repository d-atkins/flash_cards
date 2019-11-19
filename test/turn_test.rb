require 'minitest/autorun'
require 'minitest/pride'
require '../lib/turn'
require '../lib/card'


class TurnTest < Minitest::Test

  def test_it_exists
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Saturn", card)

    assert_instance_of Turn, turn
  end

  def test_it_has_a_guess
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Saturn", card)

    assert_equal "Saturn", turn.guess
  end

  def test_it_has_a_card
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Saturn", card)

    assert_instance_of Card, turn.card
  end

=begin

  def test_correct

    assert_equal
  end

  def test_incorrect
    assert_equal
  end

  def test_correct_feedback
    assert_equal
  end

  def test_incorrect_feedback
    assert_equal
  end
  
=end
end
