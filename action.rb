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
      cards_on_hand << card(deck)
    end

    def scoring
      cards_on_hand.each do |card|
        @points += card[:points]
      end
    end
  end
end
