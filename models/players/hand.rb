# init
class Hand < Player
  attr_reader :cards, :points
  def initialize
    @cards = []
    @points = 0
  end

  def add(card)
    card.points = 1 if @cards.size == 2 && @points < 11 && card.points == 11
    score(card)
    @cards << card
  end

  def score(card)
    @points += card.points
  end

  def reset
    @cards = []
    @points = 0
  end
end
