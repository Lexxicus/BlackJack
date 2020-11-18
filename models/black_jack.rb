class BlackJack
  include Ask
  def initialize
    game = Game.new
    ui = Interface.new(game)
    ui.start
  end
end
