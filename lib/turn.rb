class Turn
  attr_reader :guess, :card
  def initialize (guess, card)
    @guess = guess
    @card = card
  end

  def correct?
    return @card.answer.downcase == guess.downcase
  end

  def feedback
    if self.correct?
      return "Correct!"
    else
      return "Incorrect."
    end
  end

end
