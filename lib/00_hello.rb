def say_hello(first_name)
    puts "Bonjour, #{first_name} !"
  end
  
  # Demande du prénom
  def ask_first_name
    puts "Quel est ton prénom ?"
    print "> "
    gets.chomp
  end
  
  def both
    name = ask_first_name
    say_hello(name)
  end
  
 both