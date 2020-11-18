# dealer class
class Dealer < Player
  def initialize
    super(@name = 'Dealer')
  end

  def third_card(card)
    @hand.add(card) if hand.points < 17
  end
end
