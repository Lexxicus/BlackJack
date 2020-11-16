# init
module Action
  def self.included(base)
    base.include InstanceMethods
  end
  module InstanceMethods
    def card(deck)
      number = rand(0..deck.size)
      deck[number]
      deck.delete_at(number)
    end

    def add_card(deck)
      card(deck)[:points] = 1 if card(deck)[:points][0] == 'A' && @points > 11
      @cards_on_hand << card(deck)
      @points += cards_on_hand[-1][:points]
    end
  end
end
