class Game
  #Создается дилер
  #Создается игрок, запришивается имя игрока
  #Начинается игра
  #Банк дает дилеру и игроку по 100
  #Создается колода
  #Колода дает по 2 карты игроку и дилеру
  #Игроку показываются карты и их сумма очков
  #Делается ставка 10
  #Ход Игрока: Пропустить || Добавить карту || Открыть карты
  #Ход Дилера: Пропустить ход (если очков у дилера 17 или более) || Добавить карту (если очков менее 17)
  #Открывают карты: Если у каждого по 3 карты. Игроку показать карты Дилера и сумму очков. +РЕЗУЛЬТАТ ИГРЫ
  #Результат игры: Выигрывает игрок, у которого сумма очков ближе к 21
  #Если у игрока сумма очков больше 21, то он проиграл
  #Если сумма очков у игрока и дилера одинаковая, то объявляется ничья
  #Банк: Деньги победителю || Ничья - ставки возвращаются игрокам
  #Cпросить у Игрока, хочет ли он сыграть еще раз. да - заново с создания колоды || Нет - конец игры
  #Когда 100 кончаются у одного из игроков - автоматически конец игры

  def user_data
  end
end
