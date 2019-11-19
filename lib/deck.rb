class Deck

  attr_reader :cards, :count
  def initialize(cards)
    @cards = cards
    @count = cards.size
  end

  def cards_in_category(category)
    new_cards = Array.new
    new_cards.replace(cards)
    new_cards.keep_if{|card| card.category == category}
  end

end
