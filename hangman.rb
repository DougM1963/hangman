   puts "Type \"start\" to begin a new game"
   user_word = gets.chomp.downcase

	puts "enter your word to be guessed"
	word_entered = gets.chomp

	word_array = word_entered.split
	#print word_array

    puts "Guess a letter: "
    print " "
    guess = gets.chomp.downcase

    alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", 
    "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
   
def guess(letters_remaining)
    letters_remaining = alphabet - guess
   
    word_array.delete(word_array.length-1)
    letters_remaining.delete(letters_remaining.length-1)
    print letters_remaining
    
end

    turn = 0
    lives = 10 
  
   


    

 