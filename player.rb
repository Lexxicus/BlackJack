# player class
class Player
  include Action
  attr_reader :name, :balance, :cards_on_hand

  def initialize(name)
    @name = name
    @balance = 100
    @cards_on_hand = []
  end
end
