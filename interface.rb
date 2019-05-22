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
    puts "Твои карты: #{user.hand.cards}"
    puts "Карты дилера: **"
  end

  def score
    puts ""
  end

  def value(user)
    puts "Сумма твоих очков: #{user.card_sum}"
  end

  def wallet(user)
    puts "У тебя на счету: #{user.bank} USD"
  end

  def looser
    puts "У тебя больше нет денег играть"
  end

  def choose
    puts "Что будешь делать?
    Нажми 1, если хочешь взять еще карту.
    Нажми 2, если хочешь пропустить ход,
    Нажми 3, если хочешь открыть карты"
    gets.to_i
  end

  def wrong_answer
    puts "Такого ответа быть не может!"
  end

  def new_game
    puts "Сыграем еще раз? 1 - да, 2 - нет"
    gets.to_i
  end

  def game_result_player_win
    puts "Ты победил!"
  end

  def game_result_dealer_win
    puts "Ты проиграл!"
  end

  def nobody_win
    puts "Победила дружба!"
  end

  def bye
    puts "Пока-пока"
  end
end
