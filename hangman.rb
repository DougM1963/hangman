   puts "Type \"start\" to begin a new game" # outputs Type "start" to begin a new game
   user_word = gets.chomp # Takes in typed word start

	puts "enter your word to be guessed" # outputs enter your word to be guessed
	word_entered = gets.chomp.downcase # takes in the word typed and makes it all lower case

	word_array = word_entered.split("") # akes the word typed and puts it into an array

    lives = 10 # starting number of lives
    # this is the array of all letters of the alphabet
    alphabet_array = ["a", "b", "c", "d", "e", "f", "g", 
    "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", 
    "r", "s", "t", "u", "v", "w", "x", "y", "z"]

    while word_array.count > 0 do # loop to keep asking to guess a letter untill all letters guessed
    	 
    puts "Guess a letter: " # outputs Guess a letter
    print " "  # puts guess into double quotes
    guess = [gets.chomp] # makes guess equal to what is typed in
 
    word_array = word_array - guess # Takes letter guessed out of word_array if letter is correct
    print word_array, "\n" # outputs the updated word array and puts a line between word array and alphabet array
    updated_alphabet_array = alphabet_array - guess # assigns updated_word_array (alphabet_array - guess)
    print updated_alphabet_array, "\n" # outputs updated_alphabet_array to screen with a line space 
   
end
    print "you won" # outputs you won after loop is completed

    
