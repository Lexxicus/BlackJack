# player class
class Player
  include Validation
  attr_reader :name, :bet, :hand
  attr_accessor :balance
  validate :name, :presence
  def initialize(name)
    @name = name
    validate!
    @hand = Hand.new
    @balance = 100
    @bet = 10
  end
end
