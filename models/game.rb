# init
class Game
  include Ask
  def initialize
    @player = Player.new(ask)
    @dealer = Dealer.new
    @deck = Deck.new
  end

  def start_game
    2.times { @player.hand.add(@deck.issue_card) }
    2.times { @dealer.hand.add(@deck.issue_card) }
  end

  def player_name
    @player.name
  end

  def dealer_turn
    @dealer.third_card(@deck.issue_card)
  end

  def skip
    show_cards
  end

  def one_more
    @player.hand.add(@deck.issue_card)
    show_cards
  end

  def show_cards
    dealer_turn
    winner
  end

  def player_stats
    @player.hand
  end

  def dealer_stats
    @dealer.hand
  end

  def play_again
    @deck = Deck.new
    @player.hand.reset
    @dealer.hand.reset
  end

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
