require './lib/deck'
require './lib/round'
require './lib/card_generator'

filename = "cards.txt"
cards = CardGenerator.new(filename).cards.shuffle
deck = Deck.new(cards)
round = Round.new(deck)

round.start
