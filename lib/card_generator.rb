require './lib/card'
class CardGenerator

  attr_reader :cards

  def initialize(filename)
    @cards = []

    file = File.open(filename)
    file_data = file.readlines.map(&:chomp)
    file.close

    file_data.each do |line|
      split_line = line.split(%r{,\s*})
      card = Card.new(split_line[0],split_line[1],split_line[2])
      @cards << card
    end

  end

end
