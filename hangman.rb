    puts "enter your word to be guessed" # outputs enter your word to be guessed

    require 'io/console' # needed to hide word given
    word_entered = STDIN.noecho(&:gets).chomp # makes word_entered not visable on screen when typed and stores it in program

	word_array = word_entered.split("") # Takes the word typed and puts it into an array
    lives = 10 # starting number of lives

    # this is the array of all letters of the alphabet
    alphabet_array = ["a", "b", "c", "d", "e", "f", "g", 
    "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", 
    "r", "s", "t", "u", "v", "w", "x", "y", "z"]

    while word_array.count > 0 do # loop to keep asking to guess a letter untill all letters in word_array are guessed
    letters_left = word_array.count # makes the value of letters_left equal word_array.count
    print "there are #{letters_left} letters left \n" # outputs the number of letters left in the word being guessed
    puts "Guess a letter: " # outputs Guess a letter
    print " "  # puts guess into double quotes
    guess = [gets.chomp] # makes guess equal to what is typed in

    word_array = word_array - guess # Takes letter guessed out of word_array if letter is correct
    alphabet_array = alphabet_array - guess # makes alphabet_array equal to(alphabet_array - guess)
    print alphabet_array, "\n" # outputs the updated alphabet_array to screen with a line space 

    if letters_left != word_array.count # If statement stating if letters_left is not equal to word_array.count
    puts "Good Answer" # outputs Good Answer
    else # else statement that everything else is wrong from if statement in line 25
    puts "Wrong Answer" # outputs Wrong Answer
    lives = lives - 1 # counter that takes 1 off counter with every wrong guess
    end # end of if statement
    if lives == 0 # if statement that says if lives are at 0 then game over
    puts "game over" # outputs game over
    abort ("the word was #{word_entered}") # aborts the game and outputs the word was and whatever word was entered into word_entered
    end # end of if statement
end # end of while statement
    print "Game over, you win \n" # outputs Game over, you won after loop is completed
    print "the word was #{word_entered}" # outputs the word being guessed if win the game