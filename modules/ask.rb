# init
module Ask
  def self.included(base)
    base.include InstanceMethods
  end
  module InstanceMethods
    def ask
      puts 'Введите ваше имя для начала игры'
      gets.chomp.capitalize!
    end
  end
end
