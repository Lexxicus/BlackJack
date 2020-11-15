# player class
class Player
  include Validation
  include Action
  attr_reader :name, :balance, :cards_on_hand, :points
  validate :name, :presence
  def initialize(name)
    @name = name
    validate!
    @balance = 100
    @cards_on_hand = []
    @points = 0
  end
end
