  # step 1
# input: word (string)
# steps:
#   1. split up the word by letter and put into a hash with "_" for each value
#   2. return values upon each guess
# output: string as underscores and message asking for word to be guessed

class WordGame
  attr_accessor :word_checker, :guess_counter, :win

  def initialize(word)
    @word = word.upcase
    @guesses = 0
    @guess_counter = word.length
    @is_over = false
    @word_checker = @word.split('')
    @fill_out = Array.new(word.length, "_")
    @win = false

  end

  def check_guess(guess)
    if guess == @word
      @win = true
      @is_over = true
    else
      if (guess.length >

      end

    end


  end

end

# ***** DRIVER CODE *******************************************************
game = WordGame.new("hello")

while !game.is_over
  puts "Guess the word! You may enter a letter or a whole word if you think you know it."
  guess = gets.chomp.downcase
  if !game.check_guess


  end
end

if game.win
  puts "Congrats!"
else
  puts "Sorry, you lose. Goodbye."
end
