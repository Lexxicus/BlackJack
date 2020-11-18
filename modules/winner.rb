# init
module Winner
  def self.included(base)
    base.include InstanceMethods
  end
  module InstanceMethods
    def player_win?
      one = @player.hand.points > @dealer.hand.points && @player.hand.points <= 21
      two = @player.hand.points < @dealer.hand.points && @dealer.hand.points > 21
      if one || two
        true
      else
        false
      end
    end

    def dealer_win?
      one = @dealer.hand.points > @player.hand.points && @dealer.hand.points <= 21
      two = @dealer.hand.points < @player.hand.points && @player.hand.points > 21
      if one || two
        true
      else
        false
      end
    end

    def winner
      if player_win?
        @player.balance += @dealer.bet
        @dealer.balance -= @dealer.bet
        @player
      elsif dealer_win?
        @player.balance -= @dealer.bet
        @dealer.balance += @dealer.bet
        @dealer
      end
    end
  end
end
