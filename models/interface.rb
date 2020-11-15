class Interface
  def initialize
    @player = nil
    @dealer = nil
    @deck = nil
    @bank = 0
  end

  COM_LIST = {
    "\n1" => { label: 'Пропустить', func: :skip },
    '2' => { label: 'Добавить карту', func: :add_card },
    '3' => { label: 'Окрыть карты', func: :show_cards },
    '4' => { label: 'Играть ещё', func: :play_again },
    'exit' => { label: 'Выход', func: :exit_programm }
  }.freeze

  def start
    puts 'Введите ваше Имя для начала игры: '
    start_game
    on_hand(@player)
    COM_LIST.each do |key, label|
      puts "#{key}. #{label[:label]}"
    end

    loop do
      puts 'Введите номер команды:'
      send(COM_LIST[gets.chomp][:func])
    end
  end

  def start_game
    @player = Player.new(gets.chomp)
    @deck = CardDeck.new
    @dealer = Dealer.new
    2.times { @player.add_card(@deck.bj_deck.shuffle) }
    2.times { @dealer.add_card(@deck.bj_deck.shuffle) }
  end

  def on_hand(object)
    puts "Очков: #{object.points}"
    object.cards_on_hand.each do |card|
      print "|  #{card[:suit]}| "
    end
  end

  protected

  def exit_programm
    abort
  end
end
