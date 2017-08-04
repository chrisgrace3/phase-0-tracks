# step 1
# input: word (string)
# steps:
#   1. split up the word by letter and put into a hash with "_" for each value
#   2. return values upon each guess
# output: string as underscores and message asking for word to be guessed

class WordGame
  attr_accessor :word_checker, :guess_counter

  def initialize
    @word = ""
    @guesses = 0
    @guess_counter = 0
    @is_over = false
    @word_checker = []
  end

  def input_word(word)
    @word = word
    @guess_counter = word.length
    @word_checker = word.split('')
  end

end

# ***** DRIVER CODE *******************************************************
game = WordGame.new
game.input_word("hello")
p game.word_checker
p game.guess_counter
