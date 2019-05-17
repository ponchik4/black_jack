class Interface
  attr_accessor :name

  def player_name
    puts "Назови мне свое имя"
    name = gets.chomp
  end

  def welcome
    puts "Я хочу сыграть с тобой в игру!"
  end

  def show_cards(user)
    puts "Твои карты: #{user.cards}"
    puts "Карты дилера: **"
  end

  def score
    puts ""
  end

  def choose
    puts "Что будешь делать?
    Нажми 1, если хочешь взять еще карту.
    Нажми 2, если хочешь пропустить ход,
    Нажми 3, если хочешь открыть карты"
    x = gets.to_i
  end

  def wrong_answer
    puts "Такого ответа быть не может!"
  end

  def new_game
    puts "Сыграем еще раз? 1 - да, 2 - нет"
    x = gets.to_i
  end

  def bye
    puts "Пока-пока"
  end
end
