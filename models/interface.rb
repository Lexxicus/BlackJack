class Interface
  include Winner
  def initialize
    @player = nil
    @dealer = nil
    @deck = nil
  end
  REPEAT = { '1' => { label: 'С играть ещё', func: :play_again },
             '2' => { label: 'Выйти', func: :exit_programm } }.freeze
  COM_LIST = {
    '1' => { label: 'Пропустить', func: :skip },
    '2' => { label: 'Добавить карту', func: :add_card },
    '3' => { label: 'Окрыть карты', func: :show_cards },
    '4' => { label: 'Выход', func: :exit_programm }
  }.freeze

  def start
    puts 'Введите ваше Имя для начала игры: '
    start_game
    on_hand(@player)
    main_menu
  end

  def main_menu
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

  def skip
    show_cards
  end

  def add_card
    @player.add_card(@deck.bj_deck.shuffle)
    show_cards
  end

  def show_cards
    @dealer.add_card(@deck.bj_deck.shuffle) if @dealer.points < 17
    puts 'У вас: '
    on_hand(@player)
    puts 'У дилера: '
    on_hand(@dealer)
    winer
  end

  def repeat
    REPEAT.each do |key, label|
      puts "#{key}. #{label[:label]}"
    end

    loop do
      puts 'Введите номер команды:'
      send(REPEAT[gets.chomp][:func])
    end
  end

  def play_again
    @player.cards_on_hand = []
    @dealer.cards_on_hand = []
    @player.points = 0
    @dealer.points = 0
    @deck = CardDeck.new
    2.times { @player.add_card(@deck.bj_deck.shuffle) }
    2.times { @dealer.add_card(@deck.bj_deck.shuffle) }
    on_hand(@player)
    main_menu
  end

  def on_hand(object)
    puts "Очков: #{object.points}"
    puts '=' * 80
    object.cards_on_hand.each do |card|
      print "|  #{card[:suit]}| "
    end
    puts "\n"
    puts '=' * 80
  end

  def exit_programm
    abort
  end
end
