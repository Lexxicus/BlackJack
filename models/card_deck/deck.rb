# card_deck
class Deck
  attr_reader :deck

  def initialize
    @deck = new_deck.shuffle
  end

  def new_deck
    Card::VALUES.product(Card::SUITS).map { |value, suit| Card.new(value, suit) }
  end

  def issue_card
    @deck.pop
  end
end
