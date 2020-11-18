# class thats return plaing card
class Card
  SUITS = ["\u2666", "\u2663", "\u2665", "\u2660"].freeze
  VALUES = ['A', 'K', 'Q', 'J', 10, 9, 8, 7, 6, 5, 4, 3, 2].freeze
  attr_reader :name
  attr_accessor :points
  def initialize(value, suit)
    @name = "#{value}#{suit}"
    @points = score(value)
  end

  def score(value)
    return 11 if value == 'A'
    return 10 if value.is_a?(String)
    value
  end
end
