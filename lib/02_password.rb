def signup
    puts "Définis ton mot de passe :"
    print "> "
    gets.chomp
  end
  
  def login(correct_password)
    user_input = ""
    while user_input != correct_password
      puts "Entre ton mot de passe :"
      print "> "
      user_input = gets.chomp
      puts "Erreur !" if user_input != correct_password
    end
  end
  
  def welcome_screen
    puts "Bienvenue dans la zone secrète"
    puts "Voici les secrets"
  end
  
  def perform
    password = signup
    login(password)
    welcome_screen
  end
  
  perform
  