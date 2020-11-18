# player class
class Player
  include Validation
  attr_reader :name, :bet, :hand
  attr_accessor :balance
  def initialize(name)
    @name = name
    @hand = Hand.new
    @balance = 100
    @bet = 10
  end
end
