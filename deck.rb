require "./card"

class Deck
  attr_reader :cards
  def initialize(filename)
    @cards = []
    file = File.open(filename, "r")
    card_count = file.gets.to_i
    card_count.times do
      front = file.gets.strip
      back = file.gets.strip
      Card.new(front, back)
      @cards << Card.new(front,back)
    end
  end

  def play
    cards.each do |card|
      card.play      
    end
  end
end