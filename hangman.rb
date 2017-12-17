   puts "Type \"start\" to begin a new game"
   user_word = gets.chomp.downcase

	puts "enter your word to be guessed"
	word_entered = gets.chomp

	word_array = word_entered.split("")
	#print word_array

    lives = 10 
    alphabet_array = ["a", "b", "c", "d", "e", "f", "g", 
    "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", 
    "r", "s", "t", "u", "v", "w", "x", "y", "z"]

    while word_array.count > 0 do 
    	 
    puts "Guess a letter: "
    print " "
    guess = [gets.chomp]
    # print guess



    # print alphabet_array
    word_array = word_array - guess 
    print word_array
    updated_alphabet_array = alphabet_array - guess
    print updated_alphabet_array, "\n"
   
end


