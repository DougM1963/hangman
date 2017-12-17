    puts "enter your word to be guessed" # outputs enter your word to be guessed
	#word_entered =  gets.chomp.downcase # takes in the word typed and makes it all lower case

    require 'io/console' # needed to hide word given
    word_entered = STDIN.noecho(&:gets).chomp # makes word_entered not visable on screen when typed and stores it in program

	word_array = word_entered.split("") # Takes the word typed and puts it into an array
    lives = 5 # starting number of lives

    # this is the array of all letters of the alphabet
    alphabet_array = ["a", "b", "c", "d", "e", "f", "g", 
    "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", 
    "r", "s", "t", "u", "v", "w", "x", "y", "z"]

    while word_array.count > 0 #do # loop to keep asking to guess a letter untill all letters in word_array are guessed
    letters_left = word_array.count
    puts "Guess a letter: " # outputs Guess a letter
    print " "  # puts guess into double quotes
    guess = [gets.chomp] # makes guess equal to what is typed in

    word_array = word_array - guess # Takes letter guessed out of word_array if letter is correct
    print word_array
    alphabet_array = alphabet_array - guess # makes alphabet_array equal to(alphabet_array - guess)
    print alphabet_array, "\n" # outputs the updated alphabet_array to screen with a line space 

    if letters_left != word_array.count 
    puts "Good Answer"
    else
    puts "Wrong Answer"
    lives = lives - 1
    end 
    if lives == 0
    puts "game over"
    abort
    end
end
    print "Game over, you win" # outputs Game over, you won after loop is completed
