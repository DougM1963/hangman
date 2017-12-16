
	puts "enter your word to be guessed"
	word_entered = gets.chomp

	word_array = word_entered.split
	

    puts "Type \"start\" to begin a new game"
    user_word = gets.chomp.downcase
    until user_word == "start"
    user_word = gets.chomp.downcase.strip
    end

    alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", 
    "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
   


    turn = 0
    lives = 10 

     puts "Guess a letter: "
     print " "
     guess = gets.chomp.downcase.strip