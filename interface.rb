class Interface

  def create_player
    puts "Назови мне свое имя"
    name = gets.chomp
    @player = Player.new(name)
  end

  def welcome
    puts "Я хочу сыграть с тобой в игру, #{@player.name}!"
  end

  def player_turn
    puts "Что будешь делать?
    Нажми 1, если хочешь взять еще карту.
    Нажми 2, если хочешь пропустить ход,
    Нажми 3, если хочешь открыть карты"
    x = gets.to_i
    case x
      when 1
        hand_pl
        @deck.draw.each do |card|
          puts "Карта: #{card.rank} #{card.suit} Очков: #{card.value}"
        end
      when 2
        dealer_turn
      when 3
        puts @deck.open_cards
        puts @hand.card_sum
      else
        puts "Такого ответа быть не может!"
        player_turn
    end
  end

  def new_game
    puts "Сыграем еще раз? 1 - да, 2 - нет"
    x = gets.to_i
    case x
      when 1
        self.start_the_game
      when 2
        abort "Пока-пока"
      else
        puts "У тебя только два варианта ответа!"
        new_game
    end
  end
end
