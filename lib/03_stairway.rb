def dice_roll
    rand(1..6)
  end
  
  def play_turn(position)
    roll = dice_roll
    puts "Tu as lancé un #{roll}"
  
    case roll
    when 5, 6
      position += 1
      puts "Tu montes d'une marche !"
    when 1
      position -= 1 unless position == 0
      puts "Tu descends d'une marche."
    else
      puts "Tu ne bouges pas."
    end
    position
  end
  
  def stairway
    position = 0
    turn = 0
    while position < 10
      turn += 1
      puts "\nTour #{turn} - Position actuelle : #{position}"
      position = play_turn(position)
    end
    puts "Bravo ! Tu es arrivé a l fin"
  end
  
  stairway
  