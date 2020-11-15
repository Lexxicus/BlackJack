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
  end
end
