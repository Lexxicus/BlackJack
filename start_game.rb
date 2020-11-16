require_relative 'modules/winner.rb'
require_relative 'modules/validation.rb'
require_relative 'modules/action.rb'
require_relative 'models/interface.rb'
require_relative 'models/dealer.rb'
require_relative 'models/player.rb'
require_relative 'models/card_deck.rb'

ui = Interface.new
ui.start
