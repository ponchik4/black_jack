class Game

  def initialize
  end

  def create_player
    puts "Назови мне свое имя"
    name = gets.chomp
    @player = Player.new(name)
  end

  def create_dealer
    @dealer = Dealer.new
  end

  def start_the_game
    puts "Я хочу сыграть с тобой в игру, #{@player.name}!"
    @deck = Deck.new
    @hand_pl = @deck.hand
    @hand_deal = @deck.hand
    #ставки
    hand_pl
    puts "Карты дилера: **"
    player_turn
    new_game
  end

  def hand_pl
    @hand_pl.each do |card|
      puts "Карта: #{card.rank} #{card.suit} Очков: #{card.value}"
    end
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
        #Подсчет очков
      else
        puts "Такого ответа быть не может!"
        player_turn
    end
  end

  def dealer_turn
    #Ход Дилера: Пропустить ход (если очков у дилера 17 или более) || Добавить карту (если очков менее 17)
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
        puts "У тебя только два варианте ответа!"
        new_game
    end
  end

  #Открывают карты: Если у каждого по 3 карты. Игроку показать карты Дилера и сумму очков. +РЕЗУЛЬТАТ ИГРЫ
  #Результат игры: Выигрывает игрок, у которого сумма очков ближе к 21
  #Если у игрока сумма очков больше 21, то он проиграл
  #Если сумма очков у игрока и дилера одинаковая, то объявляется ничья
  #Банк: Деньги победителю || Ничья - ставки возвращаются игрокам
  #Когда 100 кончаются у одного из игроков - автоматически конец игры

  def user_data
    create_player
    create_dealer
    start_the_game
  end
end
