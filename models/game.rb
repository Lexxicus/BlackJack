# init
class Game
  def initialize(player, dealer)
    @player = player
    @dealer = dealer
    @deck = Deck.new
  end

  def start_game
    2.times { @player.hand.add(@deck.issue_card) }
    2.times { @dealer.hand.add(@deck.issue_card) }
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

  def player_cards
    @player.hand.cards
  end

  def dealer_cards
    @dealer.hand.cards
  end

  def play_again
    @deck = Deck.new
    @player.hand.reset
    @dealer.hand.reset
    start_game
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
