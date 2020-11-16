# init
module Winner
  def self.included(base)
    base.include InstanceMethods
  end
  module InstanceMethods
    def player_win?
      one = @player.points > @dealer.points && @player.points <= 21
      two = @player.points < @dealer.points && @dealer.points > 21
      if one || two
        true
      else
        false
      end
    end

    def dealer_win?
      one = @dealer.points > @player.points && @dealer.points <= 21
      two = @dealer.points < @player.points && @player.points > 21
      if one || two
        true
      else
        false
      end
    end

    def winer
      if player_win?
        @player.balance += @dealer.bet
        @dealer.balance -= @dealer.bet
        puts "Поздравляем с победой, ваш баланс #{@player.balance}"
      elsif dealer_win?
        @player.balance -= @dealer.bet
        @dealer.balance += @dealer.bet
        puts "Вы проиграли, ваш баланс #{@player.balance}"
      else
        puts 'Ничья'
      end
      repeat
    end
  end
end
