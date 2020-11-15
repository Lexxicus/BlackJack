# dealer class
class Dealer
  attr_reader :balance, :cards_on_hand

  def initialize
    @balance = 100
    @cards_on_hand = []
  end
end
