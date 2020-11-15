require_relative 'action.rb'
require_relative 'player.rb'
require_relative 'card_deck.rb'

deck = CardDeck.new
player = Player.new('Lexx')
a_d = deck.bj_deck
player.add_card(a_d)
player.add_card(a_d)
