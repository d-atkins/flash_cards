require './lib/turn'
require './lib/deck'

class Round
  attr_reader :deck, :turns, :current_card

  def initialize (deck)
    @deck = deck
    @current_card = deck.cards[0]
    @turns = []
  end

  # def take_turn (guess)
  #   get first card in deck
  #   use guess and card to create a turn object
  # end
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
