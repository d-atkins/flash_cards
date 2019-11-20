require './lib/turn'
require './lib/deck'

class Round
  attr_reader :deck, :turns, :current_card

  def initialize (deck)
    @deck = deck
    @current_card = deck.cards[0]
    @turns = []
  end

  def take_turn (guess)
    turn = Turn.new(guess, @current_card)
    @turns << turn
    @current_card = deck.cards[@deck.cards.index(@current_card) + 1]
    return turn
  end
  #
  # def number_correct
  # end
  #
  # def correct_by_category
  # end
  #
  # def percent_correct
  # end
  #
  # def percent_correct_by_category
  # end


end
