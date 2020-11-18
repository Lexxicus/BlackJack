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
    REPEAT.each do |key, label|
      puts "#{key}. #{label[:label]}"
    end

    loop do
      puts 'Введите номер команды:'
      send(REPEAT[gets.chomp][:func])
    end
  end

  def exit_programm
    abort
  end
end
