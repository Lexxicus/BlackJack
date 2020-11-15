# player class
class Player
  include Action
  attr_reader :name, :balance, :cards_on_hand, :points

  def initialize(name)
    @name = name
    @balance = 100
    @cards_on_hand = []
    @points = 0
  end
end
