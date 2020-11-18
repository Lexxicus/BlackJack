class Interface
  def initialize(game)
    @game = game
  end
  REPEAT = { '1' => { label: 'С играть ещё', func: :play_again },
             '2' => { label: 'Выйти', func: :exit_programm } }.freeze
  COM_LIST = {
    '1' => { label: 'Пропустить', func: :skip },
    '2' => { label: 'Добавить карту', func: :one_more },
    '3' => { label: 'Окрыть карты', func: :show_cards },
    '4' => { label: 'Выход', func: :exit_programm }
  }.freeze

  def start
    @game.start_game
    player_stats
    puts ' '
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

  def repeat
    puts ' '
    REPEAT.each do |key, label|
      puts "#{key}. #{label[:label]}"
    end

    loop do
      puts 'Введите номер команды:'
      send(REPEAT[gets.chomp][:func])
    end
  end

  def player_stats
    puts "У вас на руках: #{@game.player_stats.points}"
    @game.player_stats.cards.each { |card| print "| #{card.name}|" }
  end

  def dealer_stats
    puts "Счёт дилера: #{@game.dealer_stats.points}"
    @game.dealer_stats.cards.each { |card| print "| #{card.name}|" }
  end

  def who_win(object)
    if object.nil?
      puts 'Ничья'
    elsif object.name == 'Dealer'
      puts 'Вы проиграли'
    else
      puts 'Вы выиграли'
    end
    puts 'Ваши карты:'
    player_stats
    puts "\nКарты дилера:"
    dealer_stats
  end

  def skip
    who_win(@game.skip)
    repeat
  end

  def one_more
    who_win(@game.one_more)
    repeat
  end

  def show_cards
    who_win(@game.show_cards)
    repeat
  end

  def play_again
    @game.play_again
    start
  end

  def exit_programm
    abort
  end
end
