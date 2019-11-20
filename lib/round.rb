require './lib/turn'
require './lib/deck'

class Round
  attr_reader :deck, :turns, :current_card, :number_correct

  def initialize (deck)
    @deck = deck
    @current_card = deck.cards[0]
    @turns = []
    @number_correct = 0
  end

  def take_turn (guess)
    turn = Turn.new(guess, @current_card)
    @turns << turn

    if turn.correct?
      @number_correct += 1
    end

    @current_card = deck.cards[@deck.cards.index(@current_card) + 1]
    return turn
  end

  def number_correct_by_category (category)
    hits = 0
    @turns.each do |turn|
      if turn.card.category == category && turn.correct?
        hits += 1
      end
    end
    return hits
  end

  def percent_correct
    numerator = @number_correct.to_f
    denominator = turns.count.to_f
  
    return 100 * (numerator/denominator)
  end
  #
  # def percent_correct_by_category (category)
  #   numerator = number_correct_by_category(category).to_f
  #   denominator = deck.cards_in_category(category).count.to_f
  #   require 'pry'; binding.pry
  #   return 100 * (numerator/denominator).to_f
  # end


end
