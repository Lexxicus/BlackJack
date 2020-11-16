# dealer class
class Dealer
  include Action
  attr_reader :bet
  attr_accessor :balance, :cards_on_hand, :points
  def initialize
    @balance = 100
    @cards_on_hand = []
    @points = 0
    @bet = 10
  end
end
