# dealer class
class Dealer
  include Action
  attr_reader :balance, :cards_on_hand, :points

  def initialize
    @balance = 100
    @cards_on_hand = []
    @points = 0
  end
end
