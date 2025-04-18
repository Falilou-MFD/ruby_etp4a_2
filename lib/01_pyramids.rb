def half_pyramid
    puts "Combien d'étages veux-tu ?"
    print "> "
    height = gets.chomp.to_i
    (1..height).each do |i|
      puts "#" * i
    end
  end
  

  def full_pyramid
    puts "Combien d'étages veux-tu ?"
    print "> "
    height = gets.chomp.to_i
    (1..height).each do |i|
      spaces = " " * (height - i)
      hashes = "#" * (2 * i - 1)
      puts spaces + hashes
    end
  end

  
  def wtf_pyramid
    puts "Nombre impair d'étages ?"
    print "> "
    height = gets.chomp.to_i
    if height.even?
      puts "Erreur : nombre impair requis"
      return
    end
  
    midpoint = (height / 2) + 1
  
    # Partie montante
    (1..midpoint).each do |i|
      spaces = " " * (midpoint - i)
      hashes = "#" * (2 * i - 1)
      puts spaces + hashes
    end
  
    # Partie descendante
    (midpoint - 1).downto(1) do |i|
      spaces = " " * (midpoint - i)
      hashes = "#" * (2 * i - 1)
      puts spaces + hashes
    end
  end
  